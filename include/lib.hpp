#pragma once
#include "vm.hpp"
#include "wren.h"

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
}  // namespace fs

namespace os {
	void getEnv(WrenVM* vm);

	void setEnv(WrenVM* vm);
}

namespace net {
	namespace http {
		void request(WrenVM* vm);

		class Response {
		public:
			Response() = default;
			Response(const long& status_code, const std::string& headers, const std::string& body, const double& elapsed)
				: status_code(status_code)
				, elapsed_time(elapsed)
				, headers_str(headers)
				, body(body) {
			}

			const long& getStatusCode() const {
				return status_code;
			}
			const std::string& getContentType() const {
				return headers_str;
			}
			const std::string& getBody() const {
				return body;
			}

		private:
			long status_code;
			std::string headers_str;
			std::string body;
			double elapsed_time;
		};

	}

	class Url {
	public:
		std::optional<std::string> scheme, authority, path, query, fragment;
		Url(const std::string& url);
	};
}

}  // namespace lib
