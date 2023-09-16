#include "lib.hpp"
#include "vm.hpp"
#include <cstring>
#include <filesystem>
#include <fstream>
#include <iostream>
#include <iterator>
#include <optional>
#include <sstream>
#include <string>

static void writeFn(WrenVM* vm, const char* text)
{
	printf("%s", text);
}

static void errorFn(WrenVM* vm, WrenErrorType errorType, const char* module, const int line, const char* msg)
{
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

WrenLoadModuleResult loadModuleFn(WrenVM* vm, const char* name)
{
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

	searchPath.replace_extension(".wren");

	std::ifstream file { searchPath };

	if (file.is_open()) {
		std::stringstream buff;
		buff << file.rdbuf();
		mod.source = buff.str().c_str();
		file.close();

	} else {
		mod.source = NULL;
	}

	return mod;
}

WrenForeignClassMethods bindForeignClassFn(WrenVM* vm, const char* module, const char* className)
{
	if (strcmp(module, "std/http") == 0) {

		if (strcmp(className, "Router") == 0) {
			WrenForeignClassMethods methods;
			// methods.allocate = vm::vm_router_alloc;
			// methods.finalize = vm::vm_router_finalize;
			return methods;
		}
	}
	return (WrenForeignClassMethods) { nullptr, nullptr };
}

WrenForeignMethodFn bindForeignMethodFn(WrenVM* vm, const char* module, const char* className, bool isStatic, const char* signature)
{
	if (strcmp(module, "std/math") == 0) {
		if (strcmp(className, "Math") == 0) {
			if (isStatic && strcmp(signature, "pow(_,_,)") == 0) {
				return vm_pow;
			}
		}
	}
	return nullptr;
}

vm::Runtime::Runtime()
{

	WrenConfiguration config;
	wrenInitConfiguration(&config);
	config.writeFn = &writeFn;
	config.errorFn = &errorFn;
	config.loadModuleFn = &loadModuleFn;
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

WrenInterpretResult vm::Runtime::execute(const std::string& code, const std::string& module)
{
	return wrenInterpret(this->vm.get(), module.c_str(), code.c_str());
}

void vm::Runtime::repl()
{
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
