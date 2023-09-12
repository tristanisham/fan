#include "../vm.hpp"

void vm_serve(WrenVM* vm) {
    int port = wrenGetSlotDouble(vm, 1); // Assuming the port is passed as a double (Wren doesn't have a native int type)
    int result = vm::serve(port);
    wrenSetSlotNull(vm, 1);
    // wrenSetSlotDouble(vm, 0, result);
}

http::Response vm::VirtualMachine::handle(const http::Request& request) { }


void vm_router_alloc(WrenVM* vm)
{
    vm::bindings::Router* router = new vm::bindings::Router {};
    wrenSetSlotNewForeign(vm, 0, 0, sizeof(vm::bindings::Router));
}

void vm_router_finalize(void* data) { delete static_cast<vm::bindings::Router*>(data); }

void vm_router_get(WrenVM* vm)
{
    vm::bindings::Router* router = static_cast<vm::bindings::Router*>(wrenGetSlotForeign(vm, 0));
    const char* path = wrenGetSlotString(vm, 1);

    // Capture the Wren function in a slot to prevent it from being garbage collected
    int handlerSlot = 2;  // Assuming the handler function is in slot 2
    wrenEnsureSlots(vm, handlerSlot + 1);
    wrenSetSlotHandle(vm, handlerSlot, wrenGetSlotHandle(vm, handlerSlot));

    // Wrap the Wren function in a C++ lambda
    auto handler = [vm, handlerSlot](http::Request request) {
        wrenEnsureSlots(vm, 3);
        // ... set up the request object in slot 1, if needed
        wrenCall(vm, wrenGetSlotHandle(vm, handlerSlot));
        // ... handle the result, if needed
    };

    router->get(path, handler);
}