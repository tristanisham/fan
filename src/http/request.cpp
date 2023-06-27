#include "./request.hpp"
#include <algorithm>

// Request
http::Request::Request(int client_fd, size_t req_size_limit)
{
    this->client_fd = client_fd;
    this->buf_limit = req_size_limit;

    char buffer[this->buf_limit];
    this->bytes_recv = recv(this->client_fd, buffer, this->buf_limit, this->recv_flag);
    this->buffer.assign(buffer, this->bytes_recv);  // Adjust the buffer size based on the bytes received

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

    this->buffer.shrink_to_fit();

    std::vector<std::string> lines;
    std::string line;
    // Fill lines
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
        if (lines[i].empty()) { //#TODO

            body_toggle = true;
            i++;
            continue;
        }

        if (!body_toggle) {
            size_t colon_pos = lines[i].find(":");
            if (colon_pos != std::string::npos) {
                std::string key = lines[i].substr(0, colon_pos);
                std::string val = lines[i].substr(colon_pos + 1, lines[i].size() - colon_pos - 1);
                this->headers[key] = val;
            }
        } else {
            this->body.append(lines[i]);
            this->body.push_back('\n');
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
    out.append("\r\n\r\n");
    out.append(this->body);
    return out;
}
