#include "lib.hpp"
#include <cstring>
#include <filesystem>
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
	wrenSetSlotString(vm, 0, cwd.c_str());
}