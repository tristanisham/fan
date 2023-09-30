#include "vm.hpp"
#include <boost/format.hpp>
#include <cstdio>
#include <curl/curl.h>
#include <iostream>
#include <lib.hpp>
#include <sstream>
#include <stdexcept>
#include <string>
#include <unordered_map>
#include <variant>

std::string trim(const std::string& s) {
	auto start = s.find_first_not_of(" \t\n\r");
	auto end = s.find_last_not_of(" \t\n\r");
	if (start == std::string::npos || end == std::string::npos) {
		return "";
	}
	return s.substr(start, end - start + 1);
}

size_t writeFunction(void* ptr, size_t size, size_t nmemb, std::string* data) {
	data->append((char*)ptr, size * nmemb);
	return size * nmemb;
}

static std::unordered_map<std::string, std::string> splitHeaders(const std::string& header_string) {
	std::istringstream stream(header_string);
	std::unordered_map<std::string, std::string> output;
	std::string line;

	while (std::getline(stream, line)) {
		auto place = line.find_first_of(':');
		if (place == std::string::npos) {
			continue;
		}
		auto key = line.substr(0, place);
		// Increment 'place' by 2 to skip over the ':' and the space after it
		auto val = (place + 1 < line.length() ? line.substr(place + 2) : "");
		key = trim(key);
		val = trim(val);
		output.emplace(key, val);
	}

	return output;
}

void lib::net::http::request(WrenVM* vm) {
	try {
		const char* raw_url = wrenGetSlotString(vm, 1);
		if (raw_url == nullptr) {
			lib::abort(vm, "Invalid memory slot for function");
		}

		/* In windows, this will init the winsock stuff */
		curl_global_init(CURL_GLOBAL_ALL);

		auto curl = curl_easy_init();
		if (!curl) {
			lib::abort(vm, "Unable to construct CURL request");
		}

		curl_easy_setopt(curl, CURLOPT_URL, raw_url);
		curl_easy_setopt(curl, CURLOPT_NOPROGRESS, 1L);
		curl_easy_setopt(curl, CURLOPT_MAXREDIRS, 50L);
		curl_easy_setopt(curl, CURLOPT_TCP_KEEPALIVE, 1L);

		std::string response_string;
		std::string header_string;
		curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, writeFunction);
		curl_easy_setopt(curl, CURLOPT_WRITEDATA, &response_string);
		curl_easy_setopt(curl, CURLOPT_HEADERDATA, &header_string);

		auto res = curl_easy_perform(curl);
		if (res != CURLE_OK) {
			lib::abort(vm, (boost::format("HTTP Request failed: %1%") % curl_easy_strerror(res)).str());
		}

		long response_code;
		double elapsed;
		curl_easy_getinfo(curl, CURLINFO_RESPONSE_CODE, &response_code);
		curl_easy_getinfo(curl, CURLINFO_TOTAL_TIME, &elapsed);

		// Cleanup
		curl_easy_cleanup(curl);
		curl_global_cleanup();
		curl = NULL;

		// TODO: This code fucking sucks
		auto headers = splitHeaders(header_string);
		std::unordered_map<std::string, std::string> entries;

		for (const auto& [key, value] : headers) {
			entries[key] = value;
		}
		entries["elapsed"] = std::to_string(elapsed);
		entries["body"] = response_string;
		entries["status"] = std::to_string(response_code);
		// for (const auto& [key, val] : entries) {
		// 	std::visit([&](auto&& arg) { std::cerr << key << " : " << arg << std::endl; }, val);
		// }

		try {
			vm::createVmMap(vm, 0, entries);
		} catch (const std::logic_error&) {
			lib::abort(vm, "RUNTIME ERROR: Unable to generate correctly sized map with your succsessful result");
			return;
		}
		// auto slot_count = wrenGetSlotCount(vm);
		// std::vector<std::pair<std::string, std::string>> headers = splitHeaders(header_string);
		// // Allocate total slots
		// wrenEnsureSlots(vm, slot_count + 4 + headers.size());
		// size_t mapSlot = 0;
		// wrenSetSlotNewMap(vm, 0);
		// wrenSetSlotString(vm, 3, "body");
		// wrenSetSlotString(vm, 4, response_string.c_str());
		// wrenSetSlotString(vm, 5, "elapsed");
		// wrenSetSlotDouble(vm, 6, elapsed);
		// size_t keySlot = 7;
		// size_t valueSlot = 8;

		// for (const auto& header : headers) {
		// 	wrenSetSlotString(vm, keySlot, header.first.c_str());
		// 	wrenSetSlotString(vm, valueSlot, header.second.c_str());

		// 	wrenSetMapValue(vm, mapSlot, keySlot, valueSlot);

		// 	keySlot += 2;
		// 	valueSlot += 2;
		// }

		// Create the map

		// Save Resp Body

		// If we get here then the connection is closed gracefully
	} catch (const std::exception& e) {
		lib::abort(vm, e.what());
	}
}
