#pragma once
#include <cstring>
#include <memory>
#include <string>
#include <vector>
#include <wren.hpp>



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

	void removeFile(WrenVM* vm);

	void listAll(WrenVM* vm);

	void isDirectory(WrenVM* vm);

}  // namespace fs

namespace os {
	void getEnv(WrenVM* vm);

	void setEnv(WrenVM* vm);

	struct ArgHolder {
		int argCount;
		std::vector<std::unique_ptr<char[]>> argsStorage;
		std::unique_ptr<char*[]> args;

		ArgHolder(int argc, char** argv)
			: argCount(argc)
			, args(new char*[argc]) {
			argsStorage.reserve(argc);
			for (int i = 0; i < argc; ++i) {
				size_t length = std::strlen(argv[i]) + 1;  // +1 for null terminator
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

	void processExit(WrenVM* vm);

	void typeOf(WrenVM* vm);
}

namespace net::http {
	void requestAlloc(WrenVM* vm);
	void requestDealloc(void* data);

	void method(WrenVM* vm);

}

namespace encoding {
	void base64_encode(WrenVM* vm);

	void base64_decode(WrenVM* vm);

	void base32_encode(WrenVM* vm);

	void base32_decode(WrenVM* vm);

	void base16_encode(WrenVM* vm);

	void base16_decode(WrenVM* vm);

}

namespace fmt {
	// void join(WrenVM* vm);
}

}  // namespace lib
