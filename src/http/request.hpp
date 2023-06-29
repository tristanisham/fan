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

// Request represents a http request to the server.
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
    int from_buffer();
    size_t parse_routing();

public:
    std::string http_version;
    std::string method;
    std::string route;

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

    friend std::ostream& operator<<(std::ostream& os, const Request& obj)
    {
        os << obj.method << " " << obj.route << " " << obj.http_version << "\r\n";
        for (const auto& pair : obj.headers) {
            os << pair.first << ": " << pair.second << "\r\n";
        }
        os << "\r\n";
        os << obj.body;

        return os;
    };

    const std::string to_string();

};
}
