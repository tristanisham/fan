#pragma once
#include <bit>
#include <cstdint>
#include <cstring>
#include <exception>
#include <iostream>
#include <map>
#include <netinet/in.h>
#include <ostream>
#include <string>
#include <sys/socket.h>
#include <unistd.h>
#include <vector>


namespace http {
class Response {
public:
    Response(std::string body) { this->body = body; }
    Response(const Response&) = default;
    Response(Response&&) = default;
    Response& operator=(const Response&) = default;
    Response& operator=(Response&&) = default;

    // Bullshit to make the "<<" operator work for std::cout
    friend std::ostream& operator<<(std::ostream& os, const Response& obj)
    {
        os << obj.http_version << " " << obj.code << " " << obj.reason_phrase << "\r\n";
        for (const auto& pair : obj.headers) {
            os << pair.first << ": " << pair.second << "\r\n";
        }
        os << "\r\n\r\n";
        os << obj.body;

        return os;
    };

    const std::string to_string()
    {
        std::string os;
        os.append(this->http_version);
        os.append(" ");
        os.append(std::string { this->code });
        os.append(" ");
        os.append(this->reason_phrase);
        os.append(std::string { "\r\n" });
        for (const auto& pair : this->headers) {
            os.append(pair.first);
            os.append(": ");
            os.append(pair.second);
            os.append(std::string { "\r\n" });
        }
        os.append(std::string { "\r\n" });
        os.append(this->body);

        return os;
    }

    void status_code(int code);

    size_t content_length() { return this->body.length(); }
    void set_header(const std::string& key, const std::string& val);
    // get_header() returns the value of the key if it exists, or an empty string.
    const std::string get_header(const std::string& key) noexcept;

private:
    std::string http_version = "HTTP/1.1";
    std::string code = "200";
    std::string reason_phrase = "OK";

    // Headers
    std::map<std::string, std::string> headers;

    // Body
    std::string body;
};

}
