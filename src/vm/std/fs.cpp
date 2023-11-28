#include "boost/format/format_fwd.hpp"
#include "lib.hpp"
#include <vm.hpp>
#include "wren.h"
#include <boost/format.hpp>
#include <cstdio>
#include <cstring>
#include <filesystem>
#include <new>
#include <stdio.h>
#include <system_error>
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
		lib::abort(vm, (boost::format("Invalid number of paramaters. Expected 2, recieved %1%") % count).str());
	}

	const char* path = wrenGetSlotString(vm, 1);
	const char* mode = wrenGetSlotString(vm, 2);
	if (!isValidMode(mode)) {
		lib::abort(vm, "Invalid file mode");
	}

	std::filesystem::path basic_path(path);
	std::filesystem::path full_path;
	try {
		full_path = std::filesystem::canonical(basic_path);

	} catch (std::filesystem::filesystem_error const& e) {
		try {
			full_path = std::filesystem::absolute(basic_path);

		} catch (std::filesystem::filesystem_error const& e) {
			full_path = basic_path;
			// lib::abort(vm, (boost::format("Unable to canonicalize %1%") % path).str());
		}
	} catch (std::bad_alloc const& e) {
		lib::abort(vm, (boost::format("Unable to allocate appropriate memory %1") % e.what()).str());
	}

	if (!std::filesystem::exists(full_path)) {
		lib::abort(vm, (boost::format("File %1% doesn't exist") % full_path).str());
	}

	*file = fopen(full_path.c_str(), mode);
}

void lib::fs::fileFinalize(void* data) {
	closeFile((FILE**)data);
}

void lib::fs::fileWrite(WrenVM* vm) {
	FILE** file = (FILE**)wrenGetSlotForeign(vm, 0);

	if (*file == nullptr) {
		lib::abort(vm, "Cannot write to a closed file.");
		return;
	}

	const char* text = wrenGetSlotString(vm, 1);
	fwrite(text, sizeof(char), strlen(text), *file);
}

void lib::fs::fileRead(WrenVM* vm) {
	FILE** file = (FILE**)wrenGetSlotForeign(vm, 0);
	if (*file == nullptr) {
		lib::abort(vm, "Cannot read from a closed file.");
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

void lib::fs::removeFile(WrenVM* vm) {
	wrenEnsureSlots(vm, 1);
	std::string target { wrenGetSlotString(vm, 1) };

	if (!std::filesystem::exists(target)) {
		lib::abort(vm, (boost::format("Error removing nonexistant file: %1%") % target).str());
	}

	std::error_code err;
	if (!std::filesystem::remove(target.c_str(), err)) {
		lib::abort(vm, (boost::format("Error %1%: %2%") % err.value() % err.message()).str());
	}
}

void lib::fs::listAll(WrenVM* vm) {
	wrenEnsureSlots(vm, 3);
	if (wrenGetSlotType(vm, 1) != WREN_TYPE_STRING) {
		lib::abort(vm, "Fs.listAll requires one 'string' argument");
	}

	std::string target { wrenGetSlotString(vm, 1) };
	if (!std::filesystem::exists(target)) {
		lib::abort(vm, (boost::format("Path %1% does not exist") % target).str());
	}

	wrenSetSlotNewList(vm, 0);

	try {
		std::filesystem::recursive_directory_iterator iter(target);

		for (auto const& entry : iter) {
			wrenSetSlotString(vm, 2, entry.path().c_str());
			if (wrenGetSlotType(vm, 0) == WREN_TYPE_LIST) {
				// std::cout << "Saving: " << entry << std::endl;
				wrenInsertInList(vm, 0, -1, 2);
			}
		}
	} catch (std::filesystem::filesystem_error const& e) {
		lib::abort(vm, e.what());
	}
}

void lib::fs::isDirectory(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	auto slot_type = wrenGetSlotType(vm, 1);
	if (slot_type != WREN_TYPE_STRING) {
		lib::abort(vm, (boost::format("Err bad type. Expected %1%. Recieved: %2%") % wren_type_to_string(WREN_TYPE_STRING) % wren_type_to_string(slot_type)).str());
	}

	auto target = wrenGetSlotString(vm, 1);
	bool is_dir = std::filesystem::is_directory(target);

	wrenSetSlotBool(vm, 0, is_dir);
}
