#include "./response.hpp"
#include <exception>

const std::string http::Response::get_header(const std::string& key) noexcept
{
    try {
        return this->headers.at(key);
    } catch (std::out_of_range e) {
        return std::string { "" };
    }
}

void http::Response::set_header(const std::string& key, const std::string& val) {
    this->headers.insert_or_assign(key, val);
}
