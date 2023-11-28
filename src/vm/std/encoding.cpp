// #include <boost/archive/iterators/base64_from_binary.hpp>
// #include <boost/archive/iterators/binary_from_base64.hpp>
// #include <boost/archive/iterators/transform_width.hpp>
// #include <lib.hpp>
// #include <sstream>
// #include <string>

// const static std::string base64_chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
// 										"abcdefghijklmnopqrstuvwxyz"
// 										"0123456789+/";

// static inline bool is_base64(unsigned char c) {
// 	return (isalnum(c) || (c == '+') || (c == '/'));
// }

// void lib::encoding::base64_encode(WrenVM* vm) {
// 	wrenEnsureSlots(vm, 2);

// 	std::string data { wrenGetSlotString(vm, 1) };

// 	using namespace boost::archive::iterators;
// 	using Base64EncodeIterator = base64_from_binary<transform_width<std::string::const_iterator, 6, 8>>;
// 	std::stringstream result;
// 	std::copy(Base64EncodeIterator(data.begin()), Base64EncodeIterator(data.end()), std::ostream_iterator<char>(result));
// 	size_t equal_count = (3 - data.length() % 3) % 3;
// 	for (size_t i = 0; i < equal_count; i++) {
// 		result.put('=');
// 	}

// 	wrenSetSlotString(vm, 0, result.str().c_str());
// }

// void lib::encoding::base64_decode(WrenVM* vm) {
// 	wrenEnsureSlots(vm, 2);
// 	std::string data { wrenGetSlotString(vm, 1) };
// 	data.erase(std::remove(data.begin(), data.end(), '='), data.end());

// 	using namespace boost::archive::iterators;
// 	using Base64DecodeIterator = transform_width<binary_from_base64<std::string::const_iterator>, 8, 6>;
// 	std::stringstream result;
// 	try {
// 		std::copy(Base64DecodeIterator(data.begin()), Base64DecodeIterator(data.end()), std::ostream_iterator<char>(result));
// 	} catch (std::exception const& e) {
// 		lib::abort(vm, e.what());
// 	}

// 	wrenSetSlotString(vm, 0, result.str().c_str());
// }
