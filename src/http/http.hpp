#pragma once
#include <cstdint>
#include <iostream>
#include <map>
#include <ostream>
#include <string>

namespace http {
class Response {
public:
    Response(std::string body) { this->body = body; }
    // Bullshit to make the "<<" operator work for std::cout
    friend std::ostream& operator<<(std::ostream& os, const Response& obj)
    {
        os << obj.http_version << " " << obj.code << " " << obj.reason_phrase << "\r\n";
        for (const auto& pair : obj.headers) {
            os << pair.first << ": " << pair.second << "\r\n";
        }
        os << "\r\n";
        os << obj.body;

        return os;
    };

    std::string to_string()
    {
        std::string os;
        os.append(this->http_version);
        os.append(" ");
        os.append(std::string { this->code });
        os.append(" ");
        os.append(this->reason_phrase);
        os.append(std::string { "\r\n" });
        os.append("Content-Type: text/plain");
        for (const auto& pair : this->headers) {
            os.append(pair.first);
            os.append(": ");
            os.append(pair.second);
            os.append(std::string { "\r\n" });
        }
        os.append(std::string { "\r\n\r\n" });
        os.append(this->body);


        return os;
    }

    size_t content_length() { return this->body.length(); }

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