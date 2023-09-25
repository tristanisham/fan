#include "boost/format/format_fwd.hpp"
#include "lib.hpp"
#include <codecvt>
#include <cstring>
#include <filesystem>
#include <locale>
#include <new>
#include <stdio.h>
#include <unordered_set>
#include <boost/format.hpp>

static void closeFile(FILE** file) {
	// Already closed.
	if (*file == NULL) {
		return;
	}

	fclose(*file);
	*file = NULL;
}

static bool isValidMode(const char* str) {
    // Define an unordered_set containing all valid modes
    static const std::unordered_set<std::string> validModes = {
        "r", "w", "a", "r+", "w+", "a+", "rb", "wb", "ab", "rb+", "wb+", "ab+"
    };

    // Check if the input mode is in the set of valid modes
    return validModes.find(str) != validModes.end();
}

void lib::fs::fileAlloc(WrenVM* vm) {
	FILE** file = (FILE**)wrenSetSlotNewForeign(vm, 0, 0, sizeof(FILE*));
	auto count = wrenGetSlotCount(vm);
	if (count < 3) {
		std::string errorStr = (boost::format("Invalid number of paramaters. Expected 2, recieved %1%") % count).str();
		wrenSetSlotString(vm, 0, errorStr.c_str());
		wrenAbortFiber(vm, 0);
	}

	const char* path = wrenGetSlotString(vm, 1);
	const char* mode = wrenGetSlotString(vm, 2);
	if (!isValidMode(mode)) {
		wrenSetSlotString(vm, 0, "Invalid file mode.");
		wrenAbortFiber(vm, 0);
	}

	*file = fopen(path, mode);
}

void lib::fs::fileFinalize(void* data) {
	closeFile((FILE**)data);
}

void lib::fs::fileWrite(WrenVM* vm) {
	FILE** file = (FILE**)wrenGetSlotForeign(vm, 0);

	if (*file == nullptr) {
		wrenSetSlotString(vm, 0, "Cannot write to a closed file.");
		wrenAbortFiber(vm, 0);
		return;
	}

	const char* text = wrenGetSlotString(vm, 1);
	fwrite(text, sizeof(char), strlen(text), *file);
}

void lib::fs::fileRead(WrenVM* vm) {
	FILE** file = (FILE**)wrenGetSlotForeign(vm, 0);
	if (*file == nullptr) {
		wrenSetSlotString(vm, 0, "Cannot read from a closed file.");
		wrenAbortFiber(vm, 0);
		return;
	}

	fseek(*file, 0, SEEK_END);
	long fsize = ftell(*file);
	fseek(*file, 0, SEEK_SET);
	try {
		char* string = new char[fsize + 1];
		fread(string, fsize, 1, *file);
		string[fsize] = 0;
		wrenSetSlotString(vm, 0, string);
		delete[] string;
	} catch (std::bad_alloc e) {
		wrenSetSlotString(vm, 0, "Cannot allocate the required memory.");
		wrenAbortFiber(vm, 0);
		return;
	}
}

void lib::fs::fileClose(WrenVM* vm) {
	FILE** file = (FILE**)wrenGetSlotForeign(vm, 0);
	closeFile(file);
}

void lib::fs::cwd(WrenVM* vm) {
	auto cwd = std::filesystem::current_path();
	// Convert std::filesystem::path to std::string
#if defined(_WIN32) || defined(_WIN64)
	// If on Windows platform, convert wide string to narrow string
	std::wstring_convert<std::codecvt_utf8<wchar_t>, wchar_t> converter;
	std::string narrowPath = converter.to_bytes(cwd.wstring());
#else
	std::string narrowPath = cwd.string();
#endif
	wrenSetSlotString(vm, 0, narrowPath.c_str());
}

void lib::fs::canonical(WrenVM* vm) {
	auto target = std::filesystem::canonical(wrenGetSlotString(vm, 1));
	wrenSetSlotString(vm, 0, target.c_str());
}
