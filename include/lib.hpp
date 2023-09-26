#pragma once
#include "vm.hpp"
#include "wren.h"

namespace lib {
	void abort(WrenVM* vm, const std::string& msg);

namespace math {
	void pow(WrenVM* vm);

	void abs(WrenVM* vm);

}

namespace fs {
	/// Allocator for the std/fs/File class.
	void fileAlloc(WrenVM* vm);

	/// Dealocates File data.
	void fileFinalize(void* data);

	void fileWrite(WrenVM* vm);

	void fileRead(WrenVM* vm);

	void fileClose(WrenVM* vm);

	void cwd(WrenVM* vm);

	void canonical(WrenVM* vm);
}  // namespace fs


namespace db {
	namespace kv {
		void keyValAlloc(WrenVM* vm);

		void keyValFinalize(void* data);
	}
}
}  // namespace lib


