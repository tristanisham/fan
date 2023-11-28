#include <lib.hpp>
#include <unordered_map>

const static std::string base64_chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
										"abcdefghijklmnopqrstuvwxyz"
										"0123456789+/";

void lib::encoding::base64_encode(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);

	std::string data { wrenGetSlotString(vm, 1) };
	std::string output;

	int val = 0;
	int bits_count = 0;
	const unsigned int b63 = 0x3F;

	for (char c : data) {
		val = (val << 8) + static_cast<unsigned char>(c);
		bits_count += 8;
		while (bits_count >= 6) {
			output.push_back(base64_chars[(val >> (bits_count - 6)) & b63]);
			bits_count -= 6;
		}
	}

	if (bits_count > 0) {
		val <<= (6 - bits_count);
		output.push_back(base64_chars[val & b63]);
	}

	while (output.size() % 4) {
		output.push_back('=');
	}

	wrenSetSlotString(vm, 0, output.c_str());
}

void lib::encoding::base64_decode(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	std::string data { wrenGetSlotString(vm, 1) };
	std::unordered_map<char, int> base64_map;
	for (int i = 0; i < base64_chars.size(); ++i) {
		base64_map[base64_chars[i]] = i;
	}

	std::string output;
	int val = 0;
	int bits_count = 0;

	for (char c : data) {
		if (c == '=') {
			break;
		}

		val = (val << 6) + base64_map[c];
		bits_count += 6;
		if (bits_count >= 8) {
			output.push_back(static_cast<char>((val >> (bits_count - 8)) & 0xFF));
			bits_count -= 8;
		}
	}

	wrenSetSlotString(vm, 0, output.c_str());
}
