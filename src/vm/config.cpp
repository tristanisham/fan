#include "lib.hpp"
#include "vm.hpp"
#include "wren.h"
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

	std::ifstream file { searchPath, std::ifstream::binary | std::ios::ate };

	if (file.is_open()) {
		// Determine the size of the file
		std::streamsize fileSize = file.tellg();
		file.seekg(0, std::ios::beg);

		// Resize the vector to the file size and read the file into it
		char* buffer = new char[fileSize];
		file.read(buffer, fileSize);

		mod.source = buffer;
		mod.onComplete = &loadModuleComplete;

		file.close();

	} else {
		mod.source = NULL;
	}

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

	if (strcmp(module, "std/db/kv") == 0) {
		if (strcmp(className, "KeyValue") == 0) {
			methods.allocate = lib::db::kv::keyValAlloc;
			methods.finalize = lib::db::kv::keyValFinalize;
			return methods;
		}
	}

	return methods;
}

WrenForeignMethodFn bindForeignMethodFn(WrenVM* vm, const char* module, const char* className, bool isStatic, const char* signature) {
	if (strcmp(module, "std/math") == 0) {
		if (strcmp(className, "Math") == 0) {
			if (isStatic && strcmp(signature, "pow(_,_)") == 0) {
				return lib::math::pow;
			}

			if (isStatic && strcmp(signature, "abs(_)") == 0) {
				return lib::math::abs;
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

		if (strcmp(className, "Dir") == 0) {
			if (isStatic && strcmp(signature, "cwd()") == 0) {
				return lib::fs::cwd;
			}

			if (isStatic && strcmp(signature, "canonical(_)") == 0) {
				return lib::fs::canonical;
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
	config.loadModuleFn = &loadModuleFn;  // t
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
