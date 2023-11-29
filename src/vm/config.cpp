#include "lib.hpp"
#include "vm.hpp"
#include "wren.h"
#include <boost/format.hpp>
#include <cstddef>
#include <cstdio>
#include <cstring>
#include <filesystem>
#include <iostream>
#include <memory>
#include <stdexcept>
#include <string>
#include <tuple>

int programArgCount;
std::unique_ptr<lib::os::ArgHolder> programArgsHolder;
std::unique_ptr<char[]> sourceFile;

void vm::Runtime::setProgramArgs(int argc, char** argv) {
	// Initialize the ArgHolder with command line arguments
	programArgsHolder = std::make_unique<lib::os::ArgHolder>(argc, argv);
}

void lib::os::processArguments(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	wrenSetSlotNewList(vm, 0);
	if (programArgsHolder) {
		for (size_t i = 0; i < programArgsHolder->argCount; ++i) {
			// Set the string in slot 1
			wrenSetSlotString(vm, 1, programArgsHolder->args[i]);
			// Add the string in slot 1 to the list in slot 0
			wrenInsertInList(vm, 0, -1, 1);
		}
	}
}

/// Aborts the current fiber and sends an error message back to the VM.
void lib::abort(WrenVM* vm, const std::string& msg) {
	wrenEnsureSlots(vm, 1);
	wrenSetSlotString(vm, 0, msg.c_str());
	wrenAbortFiber(vm, 0);
}

std::string lib::wren_type_to_string(const WrenType& type) {
	switch (type) {
	case WREN_TYPE_BOOL:
		return "bool";
	case WREN_TYPE_NUM:
		return "num";
	case WREN_TYPE_FOREIGN:
		return "foreign";
	case WREN_TYPE_LIST:
		return "list";
	case WREN_TYPE_MAP:
		return "map";
	case WREN_TYPE_NULL:
		return "null";
	case WREN_TYPE_STRING:
		return "string";
	case WREN_TYPE_UNKNOWN:
		return "unknown";
	default:
		return "invalid";
	}
}

/**
 * createVmMap initializes a map in Wren
 * @param vm The Wren virtual machine
 * @param slot The target slot to write your map to. CreateVmMap will dynamically allocate new slots for your data.
 * @param entries The entries you'd like to add to your map
 */
size_t vm::createVmMap(WrenVM* vm, const size_t& slot, const std::unordered_map<std::string, std::string>& entries) {
	auto slotCount = wrenGetSlotCount(vm);
	size_t requiredSlotes = entries.size() * 2;
	if (slot > slotCount) {
		throw std::logic_error { "slot greater than available slot count. You cannot assign a map to a dynamically allocated slot" };
	}
	wrenEnsureSlots(vm, requiredSlotes);
	wrenSetSlotNewMap(vm, slot);
	auto key_slot = slotCount + 1;
	auto val_slot = slotCount + 2;

	for (const auto& [key, val] : entries) {
		wrenSetSlotString(vm, key_slot, key.c_str());
		wrenSetSlotString(vm, val_slot, val.c_str());
		wrenSetMapValue(vm, slot, key_slot, val_slot);
		key_slot += 2;
		val_slot += 2;
	}

	return val_slot - 1;
}

static void writeFn(WrenVM* vm, const char* text) {
	printf("%s", text);
}

static void errorFn(WrenVM* vm, WrenErrorType errorType, const char* module, const int line, const char* msg) {
	const char* moduleDisplay = (std::strcmp(module, "main") == 0) ? sourceFile.get() : module;
	switch (errorType) {
	case WREN_ERROR_COMPILE: {
		printf("[%s:%d] [Error] %s\n", moduleDisplay, line, msg);
	} break;
	case WREN_ERROR_STACK_TRACE: {
		printf("[%s:%d] in %s\n", moduleDisplay, line, msg);
	} break;
	case WREN_ERROR_RUNTIME: {
		printf("[Runtime Error] %s\n", msg);
		// Need to find a way to keep track of user source to print actual file name.
	} break;
	}
}

static void loadModuleComplete(WrenVM* vm, const char* module, WrenLoadModuleResult result) {
	if (result.source) {
		delete[] result.source;
		result.source = nullptr;
	}
}

WrenLoadModuleResult loadModuleFn(WrenVM* vm, const char* name) {
	WrenLoadModuleResult mod;
	std::filesystem::path p { name };
	std::filesystem::path searchPath {};

	int i = 0;
	for (const auto& seg : p) {
		if (i == 0 && seg == "std") {
			auto void_install = std::getenv("FAN_LIB");
			if (void_install != NULL) {
				searchPath.append(void_install);
			} else {
				searchPath = (std::filesystem::current_path());
			}
			continue;
		}

		searchPath = searchPath / seg;

		i++;
	}

	searchPath.replace_extension(".fan");
	if (!std::filesystem::exists(searchPath)) {
		std::string fmt = (boost::format("File %1% wasn't found.") % searchPath).str();
		std::cerr << fmt << std::endl;
		mod.source = NULL;
		return mod;
	}

	FILE* file = fopen(searchPath.c_str(), "r");
	if (file == nullptr) {
		mod.source = NULL;
		return mod;
	}

	fseek(file, 0, SEEK_END);
	long fsize = ftell(file);
	fseek(file, 0, SEEK_SET);
	char* string = new char[fsize + 1];
	fread(string, fsize, 1, file);
	string[fsize] = 0;
	mod.source = string;
	mod.onComplete = &loadModuleComplete;

	fclose(file);
	file = nullptr;

	return mod;
}

WrenForeignClassMethods bindForeignClassFn(WrenVM* vm, const char* module, const char* className) {
	WrenForeignClassMethods methods { nullptr, nullptr };

	if (strcmp(module, "std/fs") == 0) {

		if (strcmp(className, "File") == 0) {
			methods.allocate = lib::fs::fileAlloc;	// vm/std/fs.cpp
			methods.finalize = lib::fs::fileFinalize;  // vm/std/fs.cpp
			return methods;
		}
	}

	if (strcmp(module, "std/net/http") == 0) {
		if (strcmp(className, "Request") == 0) {
			methods.allocate = lib::net::http::requestAlloc;
			methods.finalize = lib::net::http::requestDealloc;
			return methods;
		}
	}

	return methods;
}

WrenForeignMethodFn bindForeignMethodFn(WrenVM* vm, const char* module, const char* className, bool isStatic, const char* signature) {

	if (strcmp(module, "std/fs") == 0) {
		if (strcmp(className, "File") == 0) {
			if (!isStatic && strcmp(signature, "write(_)") == 0) {
				return lib::fs::fileWrite;
			}

			if (!isStatic && strcmp(signature, "close()") == 0) {
				return lib::fs::fileClose;
			}

			if (!isStatic && strcmp(signature, "read()") == 0) {
				return lib::fs::fileRead;
			}
		}

		if (strcmp(className, "Path") == 0) {

			if (isStatic && strcmp(signature, "canonical(_)") == 0) {
				return lib::fs::canonical;
			}

			if (isStatic && strcmp(signature, "exists(_)") == 0) {
				return lib::fs::exists;
			}

			if (isStatic && strcmp(signature, "seperator()") == 0) {
				return lib::fs::seperator;
			}
		}

		if (std::strcmp(className, "Fs") == 0) {
			if (isStatic && strcmp(signature, "cwd()") == 0) {
				return lib::fs::cwd;
			}

			if (isStatic && std::strcmp(signature, "remove(_)") == 0) {
				return lib::fs::removeFile;
			}

			if (isStatic && std::strcmp(signature, "listAll(_)") == 0) {
				return lib::fs::listAll;
			}

			if (isStatic && std::strcmp(signature, "isDirectory(_)") == 0) {
				return lib::fs::isDirectory;
			}
		}
	}

	if (strcmp(module, "std/os") == 0) {
		if (strcmp(className, "Env") == 0) {
			if (isStatic && strcmp(signature, "get(_)") == 0) {
				return lib::os::getEnv;
			}

			if (isStatic && strcmp(signature, "set(_,_)") == 0) {
				return lib::os::setEnv;
			}
		}

		if (strcmp(className, "Process") == 0) {
			if (isStatic && strcmp(signature, "allArguments") == 0) {
				return lib::os::processArguments;
			}

			if (isStatic && strcmp(signature, "cwd") == 0) {
				return lib::os::cwd;
			}

			if (isStatic && strcmp(signature, "pid") == 0) {
				return lib::os::pid;
			}

			if (isStatic && strcmp(signature, "ppid") == 0) {
				return lib::os::ppid;
			}

			if (isStatic && strcmp(signature, "exec(_,_)") == 0) {
				return lib::os::processExec;
			}
		}

		if (strcmp(className, "Runtime") == 0) {

			if (isStatic && strcmp(signature, "os") == 0) {
				return lib::os::runtimeOS;
			}

			if (isStatic && strcmp(signature, "arch") == 0) {
				return lib::os::runtimeArch;
			}
		}
	}

	if (strcmp(module, "std/net/http") == 0) {
		if (strcmp(className, "Request") == 0) {
			if (!isStatic && strcmp(signature, "method(_)")) {
				return lib::net::http::method;
			}
		}
	}

	if (std::strcmp(module, "std/encoding") == 0) {
		if (std::strcmp(className, "Base64") == 0) {
			if (isStatic && std::strcmp(signature, "encode(_)") == 0) {
				return lib::encoding::base64_encode;
			} else if (isStatic && std::strcmp(signature, "decode(_)") == 0) {
				return lib::encoding::base64_decode;
			}
		}

		if (std::strcmp(className, "Base32") == 0) {
			if (isStatic && std::strcmp(signature, "encode(_)") == 0) {
				return lib::encoding::base64_encode;
			} else if (isStatic && std::strcmp(signature, "decode(_)") == 0) {
				return lib::encoding::base64_decode;
			}
		}

		if (std::strcmp(className, "Base16") == 0) {
			if (isStatic && std::strcmp(signature, "encode(_)") == 0) {
				return lib::encoding::base64_encode;
			} else if (isStatic && std::strcmp(signature, "decode(_)") == 0) {
				return lib::encoding::base64_decode;
			}
		}

	}

	return nullptr;
}

void vm::Runtime::setEntryPoint(const std::filesystem::path& target) {
	this->entryPoint = target;
	auto relStr = target.relative_path().c_str();

	// Allocate memory for sourceFile using a smart pointer
	sourceFile = std::make_unique<char[]>(std::strlen(relStr) + 1);

	// Copy the string
	std::strcpy(sourceFile.get(), relStr);
};

vm::Runtime::Runtime() {

	WrenConfiguration config;
	wrenInitConfiguration(&config);
	config.writeFn = &writeFn;
	config.errorFn = &errorFn;
	config.loadModuleFn = &loadModuleFn;  //
	config.bindForeignClassFn = &bindForeignClassFn;
	config.bindForeignMethodFn = &bindForeignMethodFn;
	// Stores own copy of config. Can drop config.
	WrenVM* unsafe_vm = wrenNewVM(&config);

	auto deleter = [](WrenVM* vm) {
		wrenFreeVM(vm);	 // Replace with the appropriate cleanup function
	};

	std::shared_ptr<WrenVM> vm(unsafe_vm, deleter);

	this->vm = vm;
}

WrenInterpretResult vm::Runtime::execute(const std::string& code, const std::string& module) {
	return wrenInterpret(this->vm.get(), module.c_str(), code.c_str());
}

void vm::Runtime::repl() {
	std::string input;
	std::cout << "%> ";
	while (true) {
		std::getline(std::cin, input);

		if (input == "exit") {
			break;
		}

		this->execute(input);

		std::cout << "%> ";
	}
}
