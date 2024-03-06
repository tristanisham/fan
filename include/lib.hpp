#pragma once
#include <boost/format.hpp>
#include <cstddef>
#include <cstdio>
#include <cstring>
#include <curl/curl.h>
#include <curl/easy.h>
#include <memory>
#include <stdexcept>
#include <string>
#include <utility>
#include <vector>
#include <wren.hpp>

namespace lib {
void abort(WrenVM* vm, const std::string& msg);
std::string wren_type_to_string(const WrenType& type);

namespace fs {
	/// Allocator for the std/fs/File class.
	void fileAlloc(WrenVM* vm);

	/// Dealocates File data.
	void fileFinalize(void* data);

	void fileWrite(WrenVM* vm);

	void fileRead(WrenVM* vm);

	void fileClose(WrenVM* vm);

	void cwd(WrenVM* vm);

	void canonical(WrenVM* vm);

	void exists(WrenVM* vm);

	void separator(WrenVM* vm);

	void removeFile(WrenVM* vm);

	void listAll(WrenVM* vm);

	void isDirectory(WrenVM* vm);

}  // namespace fs

namespace os {
	void getEnv(WrenVM* vm);

	void setEnv(WrenVM* vm);

	struct ArgHolder {
		int argCount;
		std::vector<std::unique_ptr<char[]>> argsStorage;
		std::unique_ptr<char*[]> args;

		ArgHolder(int argc, char** argv)
			: argCount(argc)
			, args(new char*[argc]) {
			argsStorage.reserve(argc);
			for (int i = 0; i < argc; ++i) {
				size_t length = std::strlen(argv[i]) + 1;  // +1 for null terminator
				argsStorage.push_back(std::make_unique<char[]>(length));
				std::strcpy(argsStorage.back().get(), argv[i]);
				args[i] = argsStorage.back().get();
			}
		}
	};

	void processArguments(WrenVM* vm);

	void cwd(WrenVM* vm);

	void pid(WrenVM* vm);

	void ppid(WrenVM* vm);

	void runtimeOS(WrenVM* vm);

	void runtimeArch(WrenVM* vm);

	void processExec(WrenVM* vm);

	void processExit(WrenVM* vm);

	void typeOf(WrenVM* vm);
}

namespace net::http {

	inline size_t writeFunction(void* ptr, const size_t size, const size_t nmemb, std::string* data) {
		data->append(static_cast<char*>(ptr), size * nmemb);
		return size * nmemb;
	}

	struct Client {

		Client() {
			this->curl = curl_easy_init();
			if (this->curl == nullptr) {
				throw std::runtime_error("Failed to initialize CURL");
			}

			// Default CURL arguments:
			this->followLocation(true);
			this->autoReferer(true);
			this->noProgress(true);
			this->maxRedirects();
			this->keepTCPAlive(true);
		}

		~Client() {
			if (this->curl == nullptr) {
				return;
			}

			curl_easy_cleanup(this->curl);
			this->curl = nullptr;
		}

		enum class HttpMethod { GET, POST, PUT, DELETE, HEAD, OPTIONS, PATCH, TRACE };

		void url(std::string const& url) const {
			curl_easy_setopt(this->curl, CURLOPT_URL, url.c_str());
		}

		void followLocation(const bool answer) const {
			curl_easy_setopt(this->curl, CURLOPT_FOLLOWLOCATION, (answer) ? 1L : 0L);
		}

		void autoReferer(const bool answer) const {
			curl_easy_setopt(this->curl, CURLOPT_AUTOREFERER, (answer) ? 1L : 0L);
		}

		void noProgress(const bool answer) const {
			curl_easy_setopt(this->curl, CURLOPT_NOPROGRESS, (answer) ? 1L : 0L);
		}

		void maxRedirects(const long answer = 50L) const {
			curl_easy_setopt(this->curl, CURLOPT_MAXREDIRS, answer);
		}

		void keepTCPAlive(const bool answer) const {
			curl_easy_setopt(this->curl, CURLOPT_TCP_KEEPALIVE, (answer) ? 1L : 0L);
		}

		void method(const HttpMethod method) const {
			std::string method_str;
			try {
				method_str = this->getHttpMethodString(method);
			} catch (std::invalid_argument& e) {
				method_str = "GET";
			}

			curl_easy_setopt(this->curl, CURLOPT_CUSTOMREQUEST, method_str.c_str());
		}

		/**
		 * fetch(string? url) returns a pair<header, resp> containing the HTTP response headers and body.
		 * @throws std::runtime_error
		 */
		[[nodiscard]] std::pair<std::string, std::string> fetch(std::string const& url = "") const {
			if (!url.empty()) {
				this->url(url);
			}

			std::string response_string;
			std::string header_string;
			curl_easy_setopt(this->curl, CURLOPT_WRITEFUNCTION, writeFunction);
			curl_easy_setopt(this->curl, CURLOPT_WRITEDATA, &response_string);
			curl_easy_setopt(this->curl, CURLOPT_HEADERDATA, &header_string);

			CURLcode res = curl_easy_perform(this->curl);

			if (res != CURLE_OK) {
				throw std::runtime_error((boost::format("CURL Error: %1%") % curl_easy_strerror(res)).str().c_str());
			}

			return std::make_pair(header_string, response_string);
		}

	private:
		CURL* curl;
		std::string _url;

		static std::string getHttpMethodString(HttpMethod method) {
			switch (method) {
			case HttpMethod::GET:
				return "GET";
			case HttpMethod::POST:
				return "POST";
			case HttpMethod::PUT:
				return "PUT";
			case HttpMethod::DELETE:
				return "DELETE";
			case HttpMethod::HEAD:
				return "HEAD";
			case HttpMethod::OPTIONS:
				return "OPTIONS";
			case HttpMethod::PATCH:
				return "PATCH";
			case HttpMethod::TRACE:
				return "TRACE";
			default:
				throw std::invalid_argument("Invalid HTTP method");
			}
		}
	};

	void requestAlloc(WrenVM* vm);
	void requestDealloc(void* data);

	void send(WrenVM* vm);

}

namespace encoding {
	void base64_encode(WrenVM* vm);

	void base64_decode(WrenVM* vm);

	void base32_encode(WrenVM* vm);

	void base32_decode(WrenVM* vm);

	void base16_encode(WrenVM* vm);

	void base16_decode(WrenVM* vm);

}

}  // namespace lib
