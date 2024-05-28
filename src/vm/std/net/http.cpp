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

void lib::net::http::setHeader(WrenVM* vm) {
	wrenEnsureSlots(vm, 3);
	auto** client = static_cast<Client**>(wrenGetSlotForeign(vm, 0));
	if (*client == nullptr) {
		lib::abort(vm, "CURL Error: Cannot build client when setting header");
		return;
	}

	auto const key = wrenGetSlotString(vm, 1);
	auto const val = wrenGetSlotString(vm, 2);

	(*client)->header(key, val);
}

void lib::net::http::setMethod(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	auto** client = static_cast<Client**>(wrenGetSlotForeign(vm, 0));
	if (*client == nullptr) {
		lib::abort(vm, "CURL Error: Cannot build client when setting method");
		return;
	}

	Client::HttpMethod verb;

	auto const methodStr = wrenGetSlotString(vm, 1);
	if (strcmp(methodStr, "GET") == 0) {
		verb = Client::HttpMethod::GET;
	} else if (strcmp(methodStr, "POST") == 0) {
		verb = Client::HttpMethod::POST;
	} else if (strcmp(methodStr, "PUT") == 0) {
		verb = Client::HttpMethod::PUT;
	} else if (strcmp(methodStr, "DELETE") == 0) {
		verb = Client::HttpMethod::DELETE;
	} else if (strcmp(methodStr, "HEAD") == 0) {
		verb = Client::HttpMethod::HEAD;
	} else if (strcmp(methodStr, "OPTIONS") == 0) {
		verb = Client::HttpMethod::OPTIONS;
	} else if (strcmp(methodStr, "PATCH") == 0) {
		verb = Client::HttpMethod::PATCH;
	} else if (strcmp(methodStr, "TRACE") == 0) {
		verb = Client::HttpMethod::TRACE;
	} else {
		verb = Client::HttpMethod::GET;	 // Return UNKNOWN for unrecognized methods
	}

	// Innefficiant (I do the workd twice) but fuck it.
	(*client)->method(verb);
}

void lib::net::http::setBody(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	auto** client = static_cast<Client**>(wrenGetSlotForeign(vm, 0));
	if (*client == nullptr) {
		lib::abort(vm, "CURL Error: Cannot build client when generating body");
		return;
	}

	auto const data_slice = wrenGetSlotString(vm, 1);
	std::string data { data_slice };


	(*client)->body(data);
}

void lib::net::http::send(WrenVM* vm) {
	wrenEnsureSlots(vm, 2);
	auto** client = static_cast<Client**>(wrenGetSlotForeign(vm, 0));
	if (*client == nullptr) {
		lib::abort(vm, "CURL Error: Cannot build client to send request");
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
