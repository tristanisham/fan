#include "boost/format/format_fwd.hpp"
#include <boost/format.hpp>
#include <curl/curl.h>
#include <curl/easy.h>
#include <lib.hpp>
#include <stdexcept>
#include <string>
#include <vm.hpp>
#include <wren.hpp>

void lib::net::http::requestAlloc(WrenVM* vm) {
	try {
		wrenEnsureSlots(vm, 2);
		const auto url = wrenGetSlotString(vm, 1);
		if (url == nullptr) {
			lib::abort(vm, "Invalid memory slot for function");
		}

		Client* client;
		try {
			client = new Client();
		} catch (std::runtime_error const& err) {
			lib::abort(vm, err.what());
			return;
		}

		// if (client == nullptr) {
		// 	lib::abort(vm, "Could not initalize HTTP Client");
		// 	return;
		// }

		client->url(url);

		// Where the action happens
		// Should never reach if CURL alloc fails.

		auto** client_ptr = static_cast<Client**>(wrenSetSlotNewForeign(vm, 0, 0, sizeof(Client*)));

		*client_ptr = client;
	} catch (const std::exception& e) {
		lib::abort(vm, e.what());
	}
}

void closeClient(lib::net::http::Client** client) {
	if (*client == nullptr) {
		return;
	}

	// Cleanup
	delete *client;
	*client = nullptr;
}

void lib::net::http::requestDealloc(void* data) {
	closeClient(static_cast<Client**>(data));
}

void lib::net::http::req(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	auto** client = static_cast<Client**>(wrenGetSlotForeign(vm, 0));
	if (*client == nullptr) {
		lib::abort(vm, "CURL Error: Cannot send request");
		return;
	}

	auto resp = (*client)->fetch();

	wrenSetSlotString(vm, 0, (boost::format("%1%\n%2%") % resp.first % resp.second).str().c_str());

	// std::istringstream tokenStream { resp.first };
	// std::string token;
	// std::map<std::string, std::string> headers;
	// bool is_header = false;
	// while (std::getline(tokenStream, token, '\n')) {
	// 	if (!is_header) {
	// 		headers["line"] = token;
	// 		is_header = !is_header;
	// 	}

	// 	auto colonPos = token.find(':');
	// 	if (colonPos != std::string::npos) {
	// 		headers[token.substr(0, colonPos)] = token.substr(colonPos + 1);
	// 	}
	// }

	// headers["body"] = resp.second;
	// auto startingCount = wrenGetSlotCount(vm);
	// wrenEnsureSlots(vm, startingCount + headers.size() + 1);
	// // returns Header Map
	// wrenSetSlotNewMap(vm, startingCount + 1);
	// int j = startingCount + 2;
	// for (auto const& [key, val] : headers) {
	// 	wrenSetSlotString(vm, j, key.c_str());
	// 	wrenSetSlotString(vm, j + 1, val.c_str());
	// 	wrenSetMapValue(vm, startingCount, j, j + 1);

	// 	j += 2;
	// }
}
