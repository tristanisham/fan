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
    // Fill lines
    this->buffer.shrink_to_fit();
    std::cout << this->buffer << std::endl;
    for (const auto& ch : this->buffer) {
        if (ch == '\n') {
            lines.push_back(line);
            line.clear();
            continue;
        }
        line.push_back(ch);
    }

    // Parse header line
    {

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
    }

    int i = 1;
    bool body_toggle = false;

    while (i < lines.size()) {
        if (lines[i] == "\r\n") {
            std::cout << "Just \\r\\n: " << i << std::endl;

            body_toggle = true;
            continue;
        } else if (lines[i] == "\n") {
        }

        if (!body_toggle) {
            if (lines[i].find(":") != std::string::npos) {
                // Header parser
                std::string key, val;
                bool toggle = false;
                for (const auto& ch : lines[i]) {
                    if (ch == ':' && !toggle) {
                        if (!toggle) {
                            toggle = true;
                        }
                    } else if (ch != ' ' && ch != '\r' && ch != '\n') {
                        if (!toggle) {
                            key.push_back(ch);
                        } else {
                            val.push_back(ch);
                        }
                    }
                }
                this->headers[key] = val;
            }
        } else {
            this->body.append(lines[i]);
        }

        i++;
    }

    return 0;
}

const std::string http::Request::to_string()
{
    std::string out;
    out.append(this->method);
    out.append(this->route);
    out.append(this->http_version);
    out.append("\r\n");
    for (const auto& pair : this->headers) {
        out.append(pair.first);
        out.append(": ");
        out.append(pair.second);
        out.append("\r\n");
    }
    out.append("\r\n");
    out.append(this->body);
    return out;
}
