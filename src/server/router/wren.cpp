#include "router.hpp"
#include <memory>
#include <stdio.h>

static void writeFn(WrenVM* vm, const char* text) { printf("%s", text); }

void errorFn(WrenVM* vm, WrenErrorType errorType, const char* module, const int line, const char* msg)
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

WrenLoadModuleResult loadModule(WrenVM* vm, const char* name)
{
    WrenLoadModuleResult mod;
    // @TODO implement module resolution algorithm
    mod.source = NULL;

    return mod;
}

server::wren::VirtualMachine::VirtualMachine()
{
    WrenConfiguration config;
    wrenInitConfiguration(&config);
    config.writeFn = &writeFn;
    config.errorFn = &errorFn;
    config.loadModuleFn = &loadModule;
    // Stores own copy of config. Can drop config.
    WrenVM* unsafe_vm = wrenNewVM(&config);

    auto deleter = [](WrenVM* vm) {
        wrenFreeVM(vm);  // Replace with the appropriate cleanup function
    };

    std::shared_ptr<WrenVM> vm(unsafe_vm, deleter);

    this->vm = vm;
}

server::wren::VirtualMachine::~VirtualMachine() { wrenFreeVM(this->vm.get()); }

void server::wren::VirtualMachine::run(const std::string& script, const std::string& module)
{
    WrenInterpretResult result = wrenInterpret(this->vm.get(), module.c_str(), script.c_str());

    switch (result) {
    case WREN_RESULT_COMPILE_ERROR: {
        printf("Compile Error!\n");
    } break;
    case WREN_RESULT_RUNTIME_ERROR: {
        printf("Runtime Error!\n");
    } break;
    case WREN_RESULT_SUCCESS: {
        // printf("Success!\n");
    } break;
    }
}

http::Response server::wren::VirtualMachine::handle(const http::Request& request) { }
