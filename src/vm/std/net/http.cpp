#include "boost/format/format_fwd.hpp"
#include <boost/format.hpp>
#include <cstddef>
#include <cstdio>
#include <curl/curl.h>
#include <curl/easy.h>
#include <iostream>
#include <lib.hpp>
#include <map>
#include <sstream>
#include <vm.hpp>
#include <wren.hpp>
// #include <sstream>
#include <string>
// #include <unordered_map>

size_t writeFunction(void* ptr, size_t size, size_t nmemb, std::string* data) {
	data->append((char*)ptr, size * nmemb);
	return size * nmemb;
}

void lib::net::http::requestAlloc(WrenVM* vm) {
	try {
		wrenEnsureSlots(vm, 2);
		auto url = wrenGetSlotString(vm, 1);
		if (url == nullptr) {
			lib::abort(vm, "Invalid memory slot for function");
		}

		auto curl = curl_easy_init();
		if (curl == nullptr) {
			lib::abort(vm, "CURL: easy init error");
		}

		CURL** curl_ptr = static_cast<CURL**>(wrenSetSlotNewForeign(vm, 0, 0, sizeof(CURL*)));
		curl_easy_setopt(curl, CURLOPT_URL, url);
		curl_easy_setopt(curl, CURLOPT_FOLLOWLOCATION, 1L);
		curl_easy_setopt(curl, CURLOPT_AUTOREFERER, 1L);
		curl_easy_setopt(curl, CURLOPT_NOPROGRESS, 1L);
		curl_easy_setopt(curl, CURLOPT_MAXREDIRS, 50L);
		curl_easy_setopt(curl, CURLOPT_TCP_KEEPALIVE, 1L);

		*curl_ptr = curl;
	} catch (const std::exception& e) {
		lib::abort(vm, e.what());
	}
}

void closeCURL(CURL** curl) {
	if (*curl == nullptr) {
		return;
	}

	// Cleanup
	curl_easy_cleanup(*curl);
	*curl = nullptr;
}

void lib::net::http::requestDealloc(void* data) {
	closeCURL(static_cast<CURL**>(data));
}

void lib::net::http::method(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	std::string method_str { wrenGetSlotString(vm, 1) };
	CURL** curl = static_cast<CURL**>(wrenGetSlotForeign(vm, 0));
	if (*curl == nullptr) {
		lib::abort(vm, "CURL Error: Cannot set header");
		return;
	}

	curl_easy_setopt(*curl, CURLOPT_CUSTOMREQUEST, method_str.c_str());
}

void lib::net::http::req(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	CURL** curl = static_cast<CURL**>(wrenGetSlotForeign(vm, 0));
	if (*curl == nullptr) {
		lib::abort(vm, "CURL Error: Cannot send request");
		return;
	}

	std::string response_string;
	std::string header_string;
	curl_easy_setopt(*curl, CURLOPT_WRITEFUNCTION, writeFunction);
	curl_easy_setopt(*curl, CURLOPT_WRITEDATA, &response_string);
	curl_easy_setopt(*curl, CURLOPT_HEADERDATA, &header_string);

	CURLcode res = curl_easy_perform(*curl);

	if (res != CURLE_OK) {
		lib::abort(vm, (boost::format("CURL Error: %1%") % curl_easy_strerror(res)).str());
	}

	// std::cout << header_string << std::endl;
	// std::cout << response_string << std::endl;

	std::istringstream tokenStream { header_string };
	std::string token;
	std::map<std::string, std::string> headers;
	bool is_header = false;
	while (std::getline(tokenStream, token, '\n')) {
		if (!is_header) {
			headers["line"] = token;
			is_header = !is_header;
		}

		auto colonPos = token.find(':');
		if (colonPos != std::string::npos) {
			headers[token.substr(0, colonPos)] = token.substr(colonPos + 1);
		}
	}

	headers["body"] = response_string;
	auto startingCount = wrenGetSlotCount(vm);
	wrenEnsureSlots(vm, startingCount + headers.size() + 1);
	// returns Header Map
	wrenSetSlotNewMap(vm, startingCount + 1);
	int j = startingCount + 2;
	for (auto const& [key, val] : headers) {
		wrenSetSlotString(vm, j, key.c_str());
		wrenSetSlotString(vm, j + 1, val.c_str());
		wrenSetMapValue(vm, startingCount, j, j + 1);

		j += 2;
	}
}