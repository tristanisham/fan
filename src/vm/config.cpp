#include "lib.hpp"
#include "vm.hpp"

#include <boost/format.hpp>
#include <meta.hpp>
#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <curl/curl.h>
#include <filesystem>
#include <iostream>
#include <memory>
#include <ostream>
#include <rang.hpp>
#include <stdexcept>
#include <string>
#include <wren.hpp>

// int programArgCount;
std::unique_ptr<lib::os::ArgHolder> programArgsHolder;

std::string vm::trim(const std::string& s) {
	auto start = s.find_first_not_of(" \t\n\r");
	auto end = s.find_last_not_of(" \t\n\r");
	if (start == std::string::npos || end == std::string::npos) {
		return "";
	}
	return s.substr(start, end - start + 1);
}

// /**
// * @param itemSlot is the number of slots ensured in the VM. It is the caller's responsibility to use this efficiently.
// */
// std::vector<std::variant<double, std::string, bool>> vm::getList(WrenVM* vm, int listSlot, int itemSlot) {
// 	wrenEnsureSlots(vm, itemSlot);
//     auto count = wrenGetListCount(vm, listSlot);
//     std::vector<std::variant<double, std::string, bool>> buffer;

//     for (int i = 0; i < count; i++) {
//         wrenGetListElement(vm, listSlot, 0, itemSlot);
// 		auto slotType = wrenGetSlotType(vm, itemSlot);
//         if (slotType == WREN_TYPE_NUM) {
// 			auto item = wrenGetSlotDouble(vm, itemSlot);
// 			buffer.push_back(item);
// 		} else if (slotType == WREN_TYPE_STRING) {
// 			auto item = wrenGetSlotString(vm, itemSlot);
// 			buffer.push_back(std::string{item});
// 		} else if (slotType == wrenGetSlotBool(vm, itemSlot)) {
// 			auto item = wrenGetSlotBool(vm, itemSlot);
// 			buffer.push_back(item);
// 		}
//     }

// 	return buffer;
// }

void vm::Runtime::setProgramArgs(int argc, char** argv) {
	// Initialize the ArgHolder with command line arguments
	programArgsHolder = std::make_unique<lib::os::ArgHolder>(argc, argv);
}

void lib::os::processArguments(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	wrenSetSlotNewList(vm, 0);
	if (programArgsHolder) {
		for (int i = 0; i < programArgsHolder->argCount; ++i) {
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
		return "Num";
	case WREN_TYPE_FOREIGN:
		return "Foreign";
	case WREN_TYPE_LIST:
		return "List";
	case WREN_TYPE_MAP:
		return "Map";
	case WREN_TYPE_NULL:
		return "null";
	case WREN_TYPE_STRING:
		return "String";
	default:
		return "unknown";
	}
}

/**
 * createVmMap initializes a map in Wren
 * @param vm The Wren virtual machine
 * @param slot The target slot to write your map to. CreateVmMap will dynamically allocate new slots for your data.
 * @param entries The entries you'd like to add to your map
 */
size_t vm::createVmMap(WrenVM* vm, const int& slot, const std::unordered_map<std::string, std::string>& entries) {
	const auto slotCount = wrenGetSlotCount(vm);
	const size_t requiredSlots = entries.size() * 2;
	if (slot > slotCount) {
		throw std::logic_error { "slot greater than available slot count. You cannot assign a map to a dynamically allocated slot" };
	}
	wrenEnsureSlots(vm, static_cast<int>(requiredSlots));
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

static void errorFn(WrenVM* vm, const WrenErrorType errorType, const char* module, const int line, const char* msg) {

	switch (errorType) {
	case WREN_ERROR_COMPILE: {
		std::cerr << boost::format("compile [%1%:%2%] ") % module % line << rang::fg::red << msg << rang::fg::reset << std::endl;
		// printf("[%s:%d] [Error] %s\n", module, line, msg);
	} break;
	case WREN_ERROR_STACK_TRACE: {
		std::cerr << rang::fg::red << boost::format("[%1%:%2%] ") % module % line << rang::fg::reset << msg << std::endl;
	} break;
	case WREN_ERROR_RUNTIME: {
		if (module) {
			std::cerr << boost::format("runtime [%1%:%2%] ") % module % line;
		} else {
			std::cerr << rang::fg::red << "Error: " << rang::fg::reset << msg << std::endl;
			if (std::getenv("FAN_LIB") == NULL) {
				std::cerr << rang::fg::blue << "\nHELP: " << rang::fg::reset
				<< "Fan requires the " << rang::fg::yellow << "FAN_LIB " << rang::fg::reset
				<< "environment variable to be set with the path to Fan's standard library.\n"
				<< "This is typically found in the "  << rang::fg::yellow << "lang/ " << rang::fg::reset
				<< "directory included in your installation.\n\n"
				<< "export FAN_LIB=\"" << rang::fg::yellow << "/fake/path/to/replace"
				<< rang::fg::reset << "/fan/lang\"" << std::endl;
			}
		}
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
			auto fan_install = std::getenv("FAN_LIB");
			if (fan_install != nullptr) {
				searchPath.append(fan_install);
			} else {
				// lib::abort(vm, "standard library not found. Please set the environment variable: 'FAN_LIB'");
				searchPath = (std::filesystem::current_path());
			}
			continue;
		}

		searchPath = searchPath / seg;

		i++;
	}

	searchPath.replace_extension(".fan");
	if (!std::filesystem::exists(searchPath)) {
		const std::string fmt = (boost::format("File %1% wasn't found.") % searchPath).str();
		std::cerr << fmt << std::endl;
		mod.source = nullptr;
		return mod;
	}

	FILE* file = fopen(searchPath.c_str(), "r");
	if (file == nullptr) {
		mod.source = nullptr;
		return mod;
	}

	fseek(file, 0, SEEK_END);
	const long fsize = ftell(file);
	fseek(file, 0, SEEK_SET);
	auto string = new char[fsize + 1];
	(void)fread(string, fsize, 1, file);
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
	if (strcmp(module, "std/net/http") == 0) {
		if (strcmp(className, "Request") == 0) {

			if (!isStatic && std::strcmp(signature, "send()") == 0) {
				return lib::net::http::send;
			}

			if (!isStatic && std::strcmp(signature, "header(_,_)") == 0) {
				return lib::net::http::setHeader;
			}

			if (!isStatic && std::strcmp(signature, "method(_)") == 0) {
				return lib::net::http::setMethod;
			}

			if (!isStatic && std::strcmp(signature, "body(_)") == 0) {
				return lib::net::http::setBody;
			}
		}
	}

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

			if (isStatic && strcmp(signature, "separator()") == 0) {
				return lib::fs::separator;
			}

			if (isStatic && std::strcmp(signature, "ext(_)") == 0) {
				return lib::fs::extension;
			}

			if (isStatic && std::strcmp(signature, "basename(_)") == 0) {
				return lib::fs::basename;
			}

			if (isStatic && std::strcmp(signature, "filename(_)") == 0) {
				return lib::fs::filename;
			}
		}

		if (std::strcmp(className, "Fs") == 0) {
			if (isStatic && strcmp(signature, "cwd()") == 0) {
				return lib::fs::cwd;
			}

			if (isStatic && std::strcmp(signature, "remove(_)") == 0) {
				return lib::fs::removeFile;
			}

			if (isStatic && std::strcmp(signature, "listAllRecursive(_)") == 0) {
				return lib::fs::list_all_recursive;
			}

			if (isStatic && std::strcmp(signature, "listAll(_)") == 0) {
				return lib::fs::list_all;
			}

			if (isStatic && std::strcmp(signature, "isDirectory(_)") == 0) {
				return lib::fs::isDirectory;
			}

			if (isStatic && std::strcmp(signature, "mkdir(_)") == 0) {
				return lib::fs::mkdir;
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

			if (isStatic && std::strcmp(signature, "exit(_)") == 0) {
				return lib::os::processExit;
			}
		}

		if (strcmp(className, "Runtime") == 0) {

			if (isStatic && strcmp(signature, "os") == 0) {
				return lib::os::runtimeOS;
			}

			if (isStatic && strcmp(signature, "arch") == 0) {
				return lib::os::runtimeArch;
			}

			if (isStatic && std::strcmp(signature, "typeOf(_)") == 0) {
				return lib::os::typeOf;
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

		if (std::strcmp(className, "Markdown") == 0) {
			if (isStatic && std::strcmp(signature, "toHTML(_)") == 0) {
				return lib::encoding::md_to_html;
			}
		}

		//		if (std::strcmp(className, "JSON") == 0) {
		//
		//		}
	}

	return nullptr;
}

void vm::Runtime::setEntryPoint(const std::string& target) {
	this->entryPoint = std::filesystem::path(target);
};

vm::Runtime::~Runtime() {
	curl_global_cleanup();
	// wrenFreeVM ran further down the page in the shared pointer's "deleter" labmda.
}

vm::Runtime::Runtime() {
	/* In windows, this will init the winsock stuff */
	CURLcode ecode = curl_global_init(CURL_GLOBAL_ALL);
	if (ecode != CURLE_OK) {
		fprintf(stderr, "curl_global_init() failed: %s\n", curl_easy_strerror(ecode));
	}

	WrenConfiguration config;
	wrenInitConfiguration(&config);
	config.writeFn = &writeFn;
	config.errorFn = &errorFn;
	config.loadModuleFn = &loadModuleFn;  //
	config.bindForeignClassFn = &bindForeignClassFn;
	config.bindForeignMethodFn = &bindForeignMethodFn;
	// Stores own copy of config. Can drop config.
	WrenVM* unsafe_vm = wrenNewVM(&config);

	auto deleter = [](WrenVM* vma) {
		wrenFreeVM(vma);  // Replace with the appropriate cleanup function
	};

	std::shared_ptr<WrenVM> vmx(unsafe_vm, deleter);

	this->vm = vmx;
}

WrenInterpretResult vm::Runtime::execute(const std::string& code, const std::string& module) const {
	return wrenInterpret(this->vm.get(), module.c_str(), code.c_str());
}

void vm::Runtime::repl() const {
	std::string buffer;
	std::cout << rang::style::bold << "Fan " << meta::VERSION << " REPL" << std::endl;
	std::cout << rang::fg::blue << "%> " << rang::fg::reset;

	while (true) {
		if (!std::getline(std::cin, buffer)) {
			if (std::cin.eof()) {
				// Handle EOF (Ctrl+D) here
				std::cin.clear();
				std::cin.ignore(std::numeric_limits<std::streamsize>::max(), '\n');
				break;
			} else {
				// Handle other stream errors
				break;
			}
		}
		if (auto stat = this->execute(buffer); stat != WREN_RESULT_SUCCESS) {
			// std::cerr << "Error: " + stat << std::endl;
		}
		std::cout << rang::fg::blue << "%> " << rang::fg::reset;
	}
}
