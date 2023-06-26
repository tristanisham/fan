#pragma once
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

class Request {
private:
    size_t buf_limit;
    size_t bytes_recv;
    int client_fd;
    int recv_flag = 0;
    std::string buffer;

    /**
    Returns:
    0 : Everything's okay
    -1 : Buffer's empty (len 0)
    */
    int from_buffer() noexcept;

public:
    std::string http_version;
    std::string code;
    std::string reason_phrase;

    // Headers
    std::map<std::string, std::string> headers;

    // Body
    std::string body;

    // Move/Copy semantics
    Request(const Request&) = default;
    Request(Request&&) = default;
    Request& operator=(const Request&) = default;
    Request& operator=(Request&&) = default;
    Request(int client_fd, size_t req_size_limit = 4096);
};
}
