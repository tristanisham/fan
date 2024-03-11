#include <basen.hpp>
#include <cmark/cmark.h>
#include <cstdlib>
#include <iostream>
#include <lib.hpp>
#include <nlohmann/json.hpp>
#include <sstream>
#include <stdexcept>
#include <string>
#include <vm.hpp>

void lib::encode::base64_encode(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	std::string input { wrenGetSlotString(vm, 1) };
	std::string encoded;

	bn::encode_b64(input.begin(), input.end(), std::back_inserter(encoded));

	wrenSetSlotString(vm, 0, encoded.c_str());
}

void lib::encode::base64_decode(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	std::string input { wrenGetSlotString(vm, 1) };
	std::stringstream decoded;

	bn::decode_b64(input.begin(), input.end(), std::ostream_iterator<char>(decoded, ""));
	wrenSetSlotString(vm, 0, decoded.str().c_str());
}

void lib::encode::base32_encode(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	std::string input { wrenGetSlotString(vm, 1) };
	std::string encoded;

	bn::encode_b32(input.begin(), input.end(), std::back_inserter(encoded));

	wrenSetSlotString(vm, 0, encoded.c_str());
}

void lib::encode::base32_decode(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	std::string input { wrenGetSlotString(vm, 1) };
	std::stringstream decoded;

	bn::decode_b32(input.begin(), input.end(), std::ostream_iterator<char>(decoded, ""));
	wrenSetSlotString(vm, 0, decoded.str().c_str());
}

void lib::encode::base16_encode(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	std::string input { wrenGetSlotString(vm, 1) };
	std::string encoded;

	bn::encode_b32(input.begin(), input.end(), std::back_inserter(encoded));

	wrenSetSlotString(vm, 0, encoded.c_str());
}

void lib::encode::base16_decode(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	std::string input { wrenGetSlotString(vm, 1) };
	std::stringstream decoded;

	bn::decode_b16(input.begin(), input.end(), std::ostream_iterator<char>(decoded, ""));
	wrenSetSlotString(vm, 0, decoded.str().c_str());
}

void lib::encode::md_to_html(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	auto const input = wrenGetSlotString(vm, 1);

	auto out = cmark_markdown_to_html(input, std::strlen(input), 0);
	wrenSetSlotString(vm, 0, out);
	if (out != nullptr) {
		std::free(out);
		out = nullptr;
	}
}

void lib::encode::jsonAlloc(WrenVM* vm) {
	if (wrenGetSlotCount(vm) < 2) {
		lib::abort(vm, "JSON.encode must have at least one argument of type Map");
	}

	wrenEnsureSlots(vm, 4);
	if (auto const type = wrenGetSlotType(vm, 1); type != WREN_TYPE_MAP) {
		lib::abort(vm, "JSON.encode's first argument must be of type Map.");
		return;
	}

	JSON* buff;
	try {
		auto const data = vm::map_to_json(vm, 1, 2, 3);
		buff = new JSON { data };
	} catch (std::invalid_argument const& err) {
		buff = new JSON {};
	}

	JSON** json_ptr = static_cast<JSON**>(wrenSetSlotNewForeign(vm, 0, 0, sizeof(JSON*)));
	*json_ptr = buff;
}

void lib::encode::jsonDealloc(void* data) {
	auto const json = static_cast<JSON**>(data);
	// already freed
	if (*json != nullptr) {
		delete *json;
		*json = nullptr;
	}
}

std::string lib::encode::JSON::to_string() {
	std::string out = this->buff.dump();
	return out;
}

void lib::encode::json_to_string(WrenVM* vm) {
	auto const data = static_cast<JSON**>(wrenGetSlotForeign(vm, 0));
	if (*data == nullptr) {
		wrenSetSlotString(vm, 0, "");
		return;
	}

	std::string const jsonStr = (*data)->to_string();
	wrenSetSlotString(vm, 0, jsonStr.c_str());
}
