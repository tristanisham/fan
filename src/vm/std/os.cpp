#include "boost/format.hpp"
#include <cstdlib>
#include <cstring>
#include <errno.h>
#include <lib.hpp>
#include <stdlib.h>

void lib::os::getEnv(WrenVM* vm) {
	const char* key = wrenGetSlotString(vm, 1);
	auto val = std::getenv(key);
	wrenEnsureSlots(vm, 1);
	if (val == NULL) {
		wrenSetSlotNull(vm, 0);
	} else {
		wrenSetSlotString(vm, 0, val);
	}
}

void lib::os::setEnv(WrenVM* vm) {
	const char* key = wrenGetSlotString(vm, 1);

	auto type = wrenGetSlotType(vm, 2);
	switch (type) {
	case WREN_TYPE_NULL: {
		if (unsetenv(key) == -1) {
			lib::abort(vm, strerror(errno));
		}
		break;
	}
	case WREN_TYPE_STRING: {
		const char* val = wrenGetSlotString(vm, 2);
		if (setenv(key, val, 1) == -1) {
			lib::abort(vm, strerror(errno));
		}
		break;
	}
	default: {
		std::string msg = (boost::format("Invalid type: expected string, or null. Recieved: %1%") % lib::wren_type_to_string(type)).str();
		lib::abort(vm, msg.c_str());
		break;
	}
	}
}
