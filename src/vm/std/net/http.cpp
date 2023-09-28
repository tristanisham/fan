#include <boost/format.hpp>
#include <cstdio>
#include <curl/curl.h>
#include <iostream>
#include <lib.hpp>

size_t writeFunction(void* ptr, size_t size, size_t nmemb, std::string* data) {
	data->append((char*)ptr, size * nmemb);
	return size * nmemb;
}

void lib::net::http::request(WrenVM* vm) {
	try {
		const char* raw_url = wrenGetSlotString(vm, 1);

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

        // TODO need to finish binding to Wren class
		lib::net::http::Response response { response_code, header_string, response_string, elapsed };

		// If we get here then the connection is closed gracefully
	} catch (const std::exception& e) {
		lib::abort(vm, e.what());
	}
}
