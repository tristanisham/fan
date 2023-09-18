#pragma once
#include "vm.hpp"
#include "wren.h"

namespace lib {
namespace math {
	void pow(WrenVM* vm);

}

namespace fs {
	/// Allocator for the std/fs/File class.
	void fileAlloc(WrenVM* vm);

	/// Dealocates File data.
	void fileFinalize(void* data);

	void fileWrite(WrenVM* vm);

	void fileClose(WrenVM* vm);
}  // namespace fs
}  // namespace lib
