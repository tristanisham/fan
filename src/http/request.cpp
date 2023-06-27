#include "./request.hpp"
#include <algorithm>

// Request
http::Request::Request(int client_fd, size_t req_size_limit)
{
    this->client_fd = client_fd;
    this->buf_limit = req_size_limit;

    char buffer[this->buf_limit];
    this->bytes_recv = recv(this->client_fd, buffer, this->buf_limit, this->recv_flag);
    this->buffer.assign(buffer, this->buf_limit);
    this->buffer.shrink_to_fit();
    this->buffer.resize(this->buffer.find_last_of("\r\n"));

    switch (this->from_buffer()) {
    case 0:
        break;
    case -1:
        std::cerr << "Buffer empty" << std::endl;
        break;
    }
}

int http::Request::from_buffer() noexcept
{
    if (this->buffer.empty()) {
        return -1;
    }

    std::vector<std::string> lines;
    std::string line;
    for (const auto& ch : this->buffer) {
        if (ch == '\n') {
            lines.push_back(line);
            line.clear();
            continue;
        }
        line.push_back(ch);
    }

    for (size_t i = 0; i < lines.size(); i++) {
        // Request info parser
        if (i == 0) {
            int spaces = 0;
            std::string buffer;
            for (const char& ch : lines[0]) {
                if (ch == ' ') {
                    switch (spaces) {
                    case 0:
                        this->method = buffer;
                        break;
                    case 1:
                        this->route = buffer;
                        break;
                    }
                    spaces++;
                    buffer.clear();
                } else {
                    buffer.push_back(ch);
                }
            }
            this->http_version = buffer;
            continue;
        }

        // Body parser
        if (lines[i] == "\r\n") {
            if (i + 1 < lines.size()) {
                for (; i + 1 < lines.size(); i++) {
                    this->body.append(lines[i + 1]);
                }
            }

            break;
        }

        // Header parser
        std::string key;
        std::string val;
        bool toggle = false;
        if (lines[i].find(":") != std::string::npos) {
            for (const auto& ch : lines[i]) {
                if (ch == ':' && !toggle) {
                    toggle = !toggle;
                } else if (ch != ' ' && ch != '\r') {
                    if (!toggle) {
                        key.push_back(ch);
                    } else {
                        val.push_back(ch);
                    }
                }
            }
        }

        this->headers[key] = val;
    }
    return 0;
}