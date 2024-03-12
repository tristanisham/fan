#include <basen.hpp>
#include <cmark/cmark.h>
#include <cstdlib>
#include <lib.hpp>
#include <nlohmann/json.hpp>
#include <sstream>
#include <string>
#include <vm.hpp>
#include <wren.hpp>

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

// JSON

// @TODO add actual error handling
template <class T> void lib::encode::JSON::insert(std::string key, T val) {
	this->buff[key] = val;
}

void lib::encode::json_insert(WrenVM* vm) {
	wrenEnsureSlots(vm, 3);
	auto const data = static_cast<JSON**>(wrenGetSlotForeign(vm, 0));
	auto const key = wrenGetSlotString(vm, 1);
	auto const keyType = wrenGetSlotType(vm, 1);
	auto const valType = wrenGetSlotType(vm, 2);

	switch (valType) {
	case WREN_TYPE_BOOL:

		(*data)->insert(key, wrenGetSlotBool(vm, 2));

		break;
	case WREN_TYPE_NUM:

		(*data)->insert(key, wrenGetSlotDouble(vm, 2));

		break;
	case WREN_TYPE_STRING:
		(*data)->insert(key, wrenGetSlotString(vm, 2));

		break;
	case WREN_TYPE_MAP:
	case WREN_TYPE_LIST:
		throw std::invalid_argument("Values for maps cannot be of type List and Map at this time.");
	// TODO: Add maps, lists, and anything with .toJSON() methods.
	default:
		throw std::invalid_argument((boost::format("%1% cannot be map values") % lib::wren_type_to_string(keyType)).str());
	}
}

void lib::encode::jsonAlloc(WrenVM* vm) {
	JSON* buff = new JSON {};

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
	return this->buff.dump();
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
