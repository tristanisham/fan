#include "lib.hpp"
#include <boost/format.hpp>
#include <codecvt>
#include <cstring>
#include <filesystem>
#include <locale>
#include <new>
#include <stdio.h>
#include <unordered_set>

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
	static const std::unordered_set<std::string> validModes = { "r", "w", "a", "r+", "w+", "a+", "rb", "wb", "ab", "rb+", "wb+", "ab+" };

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
		lib::abort(vm, "Invalid file mode");
	}

	std::filesystem::path newPath(path);
	try {
		auto fullPath = std::filesystem::canonical(newPath);
		if (!std::filesystem::exists(fullPath)) {
			lib::abort(vm, (boost::format("File %1% doesn't exist") % fullPath).str());
		}

		*file = fopen(fullPath.c_str(), mode);
	} catch (std::filesystem::filesystem_error const& e) {
		lib::abort(vm, (boost::format("Unable to canonicalize %1%") % path).str());
	}
}

void lib::fs::fileFinalize(void* data) {
	closeFile((FILE**)data);
}

void lib::fs::fileWrite(WrenVM* vm) {
	FILE** file = (FILE**)wrenGetSlotForeign(vm, 0);

	if (*file == nullptr) {
		wrenSetSlotString(vm, 0, "Cannot write to a closed file.");
		lib::abort(vm, "Cannot write to a closed file.");
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

void lib::fs::seperator(WrenVM* vm) {
	wrenEnsureSlots(vm, 1);
	const char separator[2] = { std::filesystem::path::preferred_separator, '\0' };
	wrenSetSlotString(vm, 0, separator);
}

void lib::fs::exists(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	const char* input = wrenGetSlotString(vm, 1);
	auto exists = std::filesystem::exists(input);

	wrenSetSlotBool(vm, 0, exists);
}