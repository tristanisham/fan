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

void lib::encoding::md_to_html(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
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

lib::encoding::JSON::JSON(const std::string& source) {
	this->data = json::parse(source);
}



void lib::encoding::jsonAlloc(WrenVM* vm) {
	try {
		wrenEnsureSlots(vm, 2);
		std::string data{ wrenGetSlotString(vm, 1)};
		if (wrenGetSlotType(vm, 1) != WrenType::WREN_TYPE_STRING) {
			lib::abort(vm, "Error: parameter 1 must be a String");
		}

		JSON* buffer;
		try {
			buffer = new JSON(data);
		} catch (std::runtime_error const& err) {
			lib::abort(vm, (boost::format("Error constructing JSON object: %1%") %  err.what()).str());
			return;
		}

		auto** json_ptr = static_cast<JSON**>(wrenSetSlotNewForeign(vm, 0, 0, sizeof(JSON*)));
		*json_ptr = buffer;

	} catch (std::exception const& err) {
		lib::abort(vm, err.what());
	}
}

void closeJSON(lib::encoding::JSON** object) {
	if (*object == nullptr) {
		return;
	}

	delete *object;
	*object = nullptr;
}

void lib::encoding::jsonDealloc(void* data) {
	closeJSON(static_cast<JSON**>(data));
}