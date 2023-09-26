#include <cstdlib>
#include <lib.hpp>

void lib::os::getEnv(WrenVM* vm) {
	const char* key = wrenGetSlotString(vm, 1);
	auto val = std::getenv(key);
	wrenEnsureSlots(vm, 1);
	if (val == nullptr) {
		wrenSetSlotNull(vm, 0);
	} else {
		wrenSetSlotString(vm, 0, val);
	}
}