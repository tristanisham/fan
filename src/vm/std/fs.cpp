#include "lib.hpp"
#include <cstring>
#include <stdio.h>

static void closeFile(FILE** file)
{
	// Already closed.
	if (*file == NULL)
		return;

	fclose(*file);
	*file = NULL;
}


void vm_fileAlloc(WrenVM* vm)
{
	FILE** file = (FILE**)wrenSetSlotNewForeign(vm, 0, 0, sizeof(FILE*));
	const char* path = wrenGetSlotString(vm, 1);
	*file = fopen(path, "w");
}

void vm_fileFinalize(void* data)
{
	closeFile((FILE**)data);
}

void vm_fileWrite(WrenVM* vm)
{
	FILE** file = (FILE**)wrenGetSlotForeign(vm, 0);

	if (*file == NULL) {
		wrenSetSlotString(vm, 0, "Cannot write to a closed file.");
		wrenAbortFiber(vm, 0);
		return;
	}

	const char* text = wrenGetSlotString(vm, 1);
	fwrite(text, sizeof(char), strlen(text), *file);
}

void vm_fileClose(WrenVM* vm) {
    FILE** file = (FILE**)wrenGetSlotForeign(vm, 0);
    closeFile(file);
}