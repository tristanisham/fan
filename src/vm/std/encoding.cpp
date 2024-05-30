#include <basen.hpp>
#include <cmark/cmark.h>
#include <iterator>
#include <lib.hpp>
#include <nlohmann/json.hpp>
#include <sstream>
#include <string>
#include <wren.hpp>

void lib::encoding::base64_encode(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	if (wrenGetSlotType(vm, 1) != WrenType::WREN_TYPE_STRING) {
		lib::abort(vm, "Error base64_encode:  parameter 1 must be a String.");
	}
	std::string input { wrenGetSlotString(vm, 1) };
	std::string encoded;

	bn::encode_b64(input.begin(), input.end(), std::back_inserter(encoded));

	wrenSetSlotString(vm, 0, encoded.c_str());
}

void lib::encoding::base64_decode(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	if (wrenGetSlotType(vm, 1) != WrenType::WREN_TYPE_STRING) {
		lib::abort(vm, "Error base64_decode:  parameter 1 must be a String.");
	}
	std::string input { wrenGetSlotString(vm, 1) };
	std::stringstream decoded;

	bn::decode_b64(input.begin(), input.end(), std::ostream_iterator<char>(decoded, ""));
	wrenSetSlotString(vm, 0, decoded.str().c_str());
}

void lib::encoding::base32_encode(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	if (wrenGetSlotType(vm, 1) != WrenType::WREN_TYPE_STRING) {
		lib::abort(vm, "Error base32_encode:  parameter 1 must be a String.");
	}
	std::string input { wrenGetSlotString(vm, 1) };
	std::string encoded;

	bn::encode_b32(input.begin(), input.end(), std::back_inserter(encoded));

	wrenSetSlotString(vm, 0, encoded.c_str());
}

void lib::encoding::base32_decode(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	if (wrenGetSlotType(vm, 1) != WrenType::WREN_TYPE_STRING) {
		lib::abort(vm, "Error base32_decode:  parameter 1 must be a String.");
	}
	std::string input { wrenGetSlotString(vm, 1) };
	std::stringstream decoded;

	bn::decode_b32(input.begin(), input.end(), std::ostream_iterator<char>(decoded, ""));
	wrenSetSlotString(vm, 0, decoded.str().c_str());
}

void lib::encoding::base16_encode(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	if (wrenGetSlotType(vm, 1) != WrenType::WREN_TYPE_STRING) {
		lib::abort(vm, "Error base16_encode:  parameter 1 must be a String.");
	}
	std::string input { wrenGetSlotString(vm, 1) };
	std::string encoded;

	bn::encode_b32(input.begin(), input.end(), std::back_inserter(encoded));

	wrenSetSlotString(vm, 0, encoded.c_str());
}

void lib::encoding::base16_decode(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	if (wrenGetSlotType(vm, 1) != WrenType::WREN_TYPE_STRING) {
		lib::abort(vm, "Error base16_decode:  parameter 1 must be a String.");
	}
	std::string input { wrenGetSlotString(vm, 1) };
	std::stringstream decoded;

	bn::decode_b16(input.begin(), input.end(), std::ostream_iterator<char>(decoded, ""));
	wrenSetSlotString(vm, 0, decoded.str().c_str());
}

void lib::encoding::md_to_html(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	if (wrenGetSlotType(vm, 1) != WrenType::WREN_TYPE_STRING) {
		lib::abort(vm, "Error md_to_html:  parameter 1 must be a String.");
	}
	auto const input = wrenGetSlotString(vm, 1);

	auto out = cmark_markdown_to_html(input, std::strlen(input), 0);
	std::string buffer{out};
	wrenSetSlotString(vm, 0, buffer.c_str());

	// Free the memory returned by CMark
	if (out != nullptr) {
		std::free(out);
		out = nullptr;
	}

}
