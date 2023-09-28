#include "lib.hpp"
#include "vm.hpp"
#include "wren.h"
#include <algorithm>
#include <boost/format.hpp>
#include <cstddef>
#include <cstdio>
#include <cstring>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <iterator>
#include <memory>
#include <optional>
#include <sstream>
#include <string>
#include <tuple>
#include <vector>

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

static void writeFn(WrenVM* vm, const char* text) {
	printf("%s", text);
}

static void errorFn(WrenVM* vm, WrenErrorType errorType, const char* module, const int line, const char* msg) {
	switch (errorType) {
	case WREN_ERROR_COMPILE: {
		printf("[%s line %d] [Error] %s\n", module, line, msg);
	} break;
	case WREN_ERROR_STACK_TRACE: {
		printf("[%s line %d] in %s\n", module, line, msg);
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
			auto void_install = std::getenv("VOID_LIB");
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

	searchPath.replace_extension(".vd");
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
	mod.onComplete = [](WrenVM* vm, const char* name, WrenLoadModuleResult result) {
		delete[] result.source;
		result.source = NULL;
	};

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

	// if (strcmp(module, "std/net/http") == 0) {
	// 	if (strcmp(className, "Response") == 0) {

	// 	}
	// }

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

		if (strcmp(className, "Dir") == 0) {
			if (isStatic && strcmp(signature, "cwd()") == 0) {
				return lib::fs::cwd;
			}

			if (isStatic && strcmp(signature, "canonical(_)") == 0) {
				return lib::fs::canonical;
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
	}

	if (strcmp(module, "std/net/http") == 0) {
		if (strcmp(className, "Request") == 0) {
			if (isStatic && strcmp(signature, "request(_)") == 0) {
				return lib::net::http::request;
			}
		}
	}

	return nullptr;
}

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
	std::cout << "> ";
	while (true) {
		std::getline(std::cin, input);

		if (input == "exit") {
			break;
		}

		this->execute(input);

		std::cout << "> ";
	}
}
