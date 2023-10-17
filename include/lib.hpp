#pragma once
#include "vm.hpp"
#include "wren.h"

namespace lib {
void abort(WrenVM* vm, const std::string& msg);
std::string wren_type_to_string(const WrenType& type);

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

	void exists(WrenVM* vm);

	void seperator(WrenVM* vm);
}  // namespace fs

namespace os {
	void getEnv(WrenVM* vm);

	void setEnv(WrenVM* vm);
}

namespace net {
	namespace http {
		void fetch(WrenVM* vm);

	}

	class Url {
	public:
		std::optional<std::string> scheme, authority, path, query, fragment;
		Url(const std::string& url);
	};
}

}  // namespace lib
