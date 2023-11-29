#include "wren.h"
#include <basen.hpp>
#include <iterator>
#include <lib.hpp>
#include <nlohmann/json.hpp>
#include <sstream>
#include <string>

void lib::encoding::base64_encode(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	std::string input { wrenGetSlotString(vm, 1) };
	std::string encoded;

	bn::encode_b64(input.begin(), input.end(), std::back_inserter(encoded));

	wrenSetSlotString(vm, 0, encoded.c_str());
}

void lib::encoding::base64_decode(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	std::string input { wrenGetSlotString(vm, 1) };
	std::stringstream decoded;

	bn::decode_b64(input.begin(), input.end(), std::ostream_iterator<char>(decoded, ""));
	wrenSetSlotString(vm, 0, decoded.str().c_str());
}

void lib::encoding::base32_encode(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	std::string input { wrenGetSlotString(vm, 1) };
	std::string encoded;

	bn::encode_b32(input.begin(), input.end(), std::back_inserter(encoded));

	wrenSetSlotString(vm, 0, encoded.c_str());
}

void lib::encoding::base32_decode(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	std::string input { wrenGetSlotString(vm, 1) };
	std::stringstream decoded;

	bn::decode_b32(input.begin(), input.end(), std::ostream_iterator<char>(decoded, ""));
	wrenSetSlotString(vm, 0, decoded.str().c_str());
}

void lib::encoding::base16_encode(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	std::string input { wrenGetSlotString(vm, 1) };
	std::string encoded;

	bn::encode_b32(input.begin(), input.end(), std::back_inserter(encoded));

	wrenSetSlotString(vm, 0, encoded.c_str());
}

void lib::encoding::base16_decode(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	std::string input { wrenGetSlotString(vm, 1) };
	std::stringstream decoded;

	bn::decode_b16(input.begin(), input.end(), std::ostream_iterator<char>(decoded, ""));
	wrenSetSlotString(vm, 0, decoded.str().c_str());
}

using json = nlohmann::json;

