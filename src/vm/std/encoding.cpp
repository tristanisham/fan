// #include <basen.hpp>
// #include <iterator>
#include <bindings.h>
#include <lib.hpp>

void lib::encoding::base64_encode(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	std::string input { wrenGetSlotString(vm, 1) };

	auto data = fan_base64_encode(input.c_str());

	std::string encoded { data };


	wrenSetSlotString(vm, 0, encoded.c_str());
	fan_str_free(data);

}

void lib::encoding::base64_decode(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	std::string input { wrenGetSlotString(vm, 1) };

	auto data = fan_base64_decode(input.c_str());
	std::string decoded { data };
	wrenSetSlotString(vm, 0, decoded.c_str());
	fan_str_free(data);

}

void lib::encoding::base32_encode(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	std::string input { wrenGetSlotString(vm, 1) };
	auto data = fan_base32_encode(input.c_str());

	std::string encoded { data };


	wrenSetSlotString(vm, 0, encoded.c_str());
	fan_str_free(data);

}

void lib::encoding::base32_decode(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	std::string input { wrenGetSlotString(vm, 1) };

	auto data = fan_base32_decode(input.c_str());
	std::string decoded { data };
	wrenSetSlotString(vm, 0, decoded.c_str());
	fan_str_free(data);

}

void lib::encoding::base16_encode(WrenVM* vm) {
	wrenEnsureSlots(vm, 3);
	std::string input { wrenGetSlotString(vm, 1) };
	bool upper = wrenGetSlotBool(vm, 2);

	auto data = fan_base16_encode(input.c_str(), upper);

	std::string encoded { data };


	wrenSetSlotString(vm, 0, encoded.c_str());
	fan_str_free(data);

}

void lib::encoding::base16_decode(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	std::string input { wrenGetSlotString(vm, 1) };
	auto data = fan_base16_decode(input.c_str());
	std::string decoded { data };

	wrenSetSlotString(vm, 0, decoded.c_str());
	fan_str_free(data);

}
