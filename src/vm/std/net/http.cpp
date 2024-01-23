#include <boost/format.hpp>
#include <cstdio>
#include <curl/curl.h>
#include <curl/easy.h>
#include <lib.hpp>
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
		if (!curl) {
			lib::abort(vm, "Unable to construct CURL request");
		}

		CURL** curl_ptr = static_cast<CURL**>(wrenSetSlotNewForeign(vm, 0, 0, sizeof(CURL*)));
		curl_easy_setopt(curl, CURLOPT_URL, url);
		curl_easy_setopt(curl, CURLOPT_NOPROGRESS, 1L);
		curl_easy_setopt(curl, CURLOPT_MAXREDIRS, 50L);
		curl_easy_setopt(curl, CURLOPT_TCP_KEEPALIVE, 1L);

		std::string response_string;
		std::string header_string;
		curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, writeFunction);
		curl_easy_setopt(curl, CURLOPT_WRITEDATA, &response_string);
		curl_easy_setopt(curl, CURLOPT_HEADERDATA, &header_string);

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
		lib::abort(vm, "Cannot set header on CURL nullptr");
		return;
	}

	curl_easy_setopt(*curl, CURLOPT_CUSTOMREQUEST, method_str.c_str());
}

