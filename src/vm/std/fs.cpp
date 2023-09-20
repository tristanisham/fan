#include "lib.hpp"
#include <codecvt>
#include <cstring>
#include <filesystem>
#include <locale>
#include <stdio.h>

static void closeFile(FILE** file) {
	// Already closed.
	if (*file == NULL) {
		return;
	}

	fclose(*file);
	*file = NULL;
}

void lib::fs::fileAlloc(WrenVM* vm) {
	FILE** file = (FILE**)wrenSetSlotNewForeign(vm, 0, 0, sizeof(FILE*));
	const char* path = wrenGetSlotString(vm, 1);
	*file = fopen(path, "w");
}

void lib::fs::fileFinalize(void* data) {
	closeFile((FILE**)data);
}

void lib::fs::fileWrite(WrenVM* vm) {
	FILE** file = (FILE**)wrenGetSlotForeign(vm, 0);

	if (*file == NULL) {
		wrenSetSlotString(vm, 0, "Cannot write to a closed file.");
		wrenAbortFiber(vm, 0);
		return;
	}

	const char* text = wrenGetSlotString(vm, 1);
	fwrite(text, sizeof(char), strlen(text), *file);
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