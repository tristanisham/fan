#include <lib.hpp>
#include <optional>
#include <regex>

lib::net::Url::Url(const std::string& url) {
	std::regex url_regex { "^(([^:/?#]+):)?(//([^/?#]*))?([^?#]*)(\?([^#]*))?(#(.*))?" };
	std::smatch matches;
	bool found = std::regex_search(url, matches, url_regex);

	if (found) {
		this->scheme = (matches[2].matched) ? std::optional<std::string> { matches[2] } : std::nullopt;
		this->authority = (matches[4].matched) ? std::optional<std::string> { matches[4] } : std::nullopt;
		this->path = (matches[5].matched) ? std::optional<std::string> { matches[5] } : std::nullopt;
		this->query = (matches[7].matched) ? std::optional<std::string> { matches[7] } : std::nullopt;
		this->fragment = (matches[9].matched) ? std::optional<std::string> { matches[9] } : std::nullopt;
	}
}
