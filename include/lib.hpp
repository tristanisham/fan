#pragma once
#include "vm.hpp"
#include "wren.h"

extern "C" {
    void vm_math_pow(WrenVM* vm);

    /// Allocator for the std/fs/File class.
    void vm_fileAlloc(WrenVM* vm);

    /// Dealocates File data.
    void vm_fileFinalize(void* data);

    void vm_fileWrite(WrenVM* vm);

    void vm_fileClose(WrenVM* vm);
}
