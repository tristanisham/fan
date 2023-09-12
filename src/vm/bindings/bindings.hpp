#pragma once
#include "../../http/http.hpp"
#include "../../wren/wren.hpp"
#include <functional>
#include <iostream>

namespace vm::bindings {


WrenForeignMethodFn bindForeignMethodFn(
    WrenVM* vm, const char* module, const char* className, bool isStatic, const char* signature);

WrenForeignClassMethods bindForeignClassFn(WrenVM* vm, const char* module, const char* className);

void vm_router_alloc(WrenVM* vm);

void vm_router_finalize(void* data);

// Handles routing created by user per-request
void vm_handle_request(WrenVM* vm);

}