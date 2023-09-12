#include "bindings/bindings.hpp"
#include "vm.hpp"

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

std::optional<std::string> extract_module(const char* name, std::optional<std::filesystem::path> starting_dir)
{

    auto cwd = std::filesystem::current_path();
    std::filesystem::path mod { name };

    auto full_mod = starting_dir.value_or(cwd) / mod;
    if (!std::filesystem::exists(full_mod)) {
        return std::nullopt;
    }

    std::ifstream file(full_mod);
    if (!file.is_open()) {
        return std::nullopt;
    }

    std::stringstream buffer;
    buffer << file.rdbuf();
    return buffer.str();
}

WrenLoadModuleResult loadModule(WrenVM* vm, const char* name)
{
    WrenLoadModuleResult mod;
    // @TODO implement module resolution algorithm
    std::optional<std::string> mod_txt;
    auto void_install = std::getenv("VOID_INSTALL");
    if (void_install == NULL) {
        mod_txt = extract_module(name, std::nullopt);
    } else {
        std::filesystem::path p { void_install };
        mod_txt = extract_module(name, p);
    }

    mod.source = (mod_txt.has_value()) ? mod_txt.value().c_str() : NULL;

    return mod;
}

WrenForeignClassMethods forign_func_binder(WrenVM* vm, const char* module, const char* className)
{
    if (strcmp(module, "std/http") == 0 && strcmp(className, "Router") == 0) {
        WrenForeignClassMethods methods;
        methods.allocate = vm::bindings::vm_router_alloc;
        methods.finalize = vm::bindings::vm_router_finalize;
        return methods;
    }
    return (WrenForeignClassMethods) { nullptr, nullptr };
}

vm::VirtualMachine::~VirtualMachine() { wrenFreeVM(this->vm.get()); }

vm::VirtualMachine::VirtualMachine()
{
    WrenConfiguration config;
    wrenInitConfiguration(&config);
    config.writeFn = &writeFn;
    config.errorFn = &errorFn;
    config.loadModuleFn = &loadModule;
    config.bindForeignClassFn = &forign_func_binder;
    config.bindForeignMethodFn = [](WrenVM* vm, const char* module, const char* className, bool isStatic,
                                     const char* signature) -> void (*)(WrenVM*) {
        if (strcmp(module, "std/http") == 0 && strcmp(className, "Server") == 0) {
            return vm::bindings::vm_serve;
        }
        return nullptr;
    };
    // Stores own copy of config. Can drop config.
    WrenVM* unsafe_vm = wrenNewVM(&config);

    auto deleter = [](WrenVM* vm) {
        wrenFreeVM(vm);  // Replace with the appropriate cleanup function
    };

    std::shared_ptr<WrenVM> vm(unsafe_vm, deleter);

    this->vm = vm;
}
