#pragma once
#include "vm.hpp"
#include "wren.h"
#include <cstring>

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

	struct ArgHolder {
        int argCount;
        std::vector<std::unique_ptr<char[]>> argsStorage;
        std::unique_ptr<char*[]> args;

        ArgHolder(int argc, char** argv) : argCount(argc), args(new char*[argc]) {
            argsStorage.reserve(argc);
            for (int i = 0; i < argc; ++i) {
                size_t length = std::strlen(argv[i]) + 1; // +1 for null terminator
                argsStorage.push_back(std::make_unique<char[]>(length));
                std::strcpy(argsStorage.back().get(), argv[i]);
                args[i] = argsStorage.back().get();
            }
        }
    };

	void processArguments(WrenVM* vm);

	void cwd(WrenVM* vm);

	void pid(WrenVM* vm);

	void ppid(WrenVM* vm);

	void runtimeOS(WrenVM* vm);

	void runtimeArch(WrenVM* vm);

	void processExec(WrenVM* vm);
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
