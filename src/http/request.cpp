#include "./request.hpp"
#include "./exceptions.hpp"
#include <algorithm>
#include <utility>

// Request
http::Request::Request(int client_fd, size_t req_size_limit)
{
    this->client_fd = client_fd;
    this->buf_limit = req_size_limit;
    this->buffer.resize(this->buf_limit);

    this->bytes_recv = recv(this->client_fd, this->buffer.data(), this->buf_limit, this->recv_flag);
    this->buffer.shrink_to_fit();
    switch (this->from_buffer()) {
    case 0:
        break;
    case -1:
        std::cerr << "Error: Request buffer empty" << std::endl;
        throw http::Status { 400 };
    case -2:
        std::cerr << "Error: Unable to parse http routing" << std::endl;
        throw http::Status { 400 };
    }
}



size_t http::Request::parse_routing()
{

    size_t start_index = this->buffer.find_first_not_of("\r\n");
    if (start_index == std::string::npos) {
        throw http::Status{400};
    }
    
    auto end_first_line = this->buffer.find("\r\n");
    auto header = this->buffer.substr(0, end_first_line);
    // I need to make this recursive
   
    // Parse header line

    int spaces = 0;
    std::string buffer;
    for (const char& ch : header) {
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
    return end_first_line;
}

std::vector<std::pair<std::string, std::string>> extract_headers(const std::string& buff)
{
    std::vector<std::string> lines;
    std::vector<std::pair<std::string, std::string>> headers;

    size_t start = 0;
    size_t newline;

    while ((newline = buff.find("\r\n", start)) != std::string::npos) {
        lines.push_back(buff.substr(start, newline - start));
        start = newline + 2;  // skip over the "\r\n" delimiter
    }

    // add the last line, if any
    if (start < buff.size()) {
        lines.push_back(buff.substr(start));
    }

    for (const auto& line : lines) {
        size_t delim = line.find(':');
        if (delim != std::string::npos) {
            size_t delim = line.find(':');
            std::string key, val;
            key = line.substr(0, delim);
            val = line.substr(delim + 1);
            std::pair<std::string, std::string> header(key, val);
            headers.push_back(header);
        }
    }

    return headers;
}

int http::Request::from_buffer()
{
    if (this->buffer.empty()) {
        return -1;
    }

    auto end_first_line = this->parse_routing();
    if (end_first_line == std::string::npos) {
        return -2;
    }

    std::vector<std::pair<std::string, std::string>> headers;
    auto body_delim = this->buffer.find("\r\n\r\n");
    if (body_delim != std::string::npos) {

        this->body = this->buffer.substr(body_delim + std::strlen("\r\n\r\n"));

        auto header_buff = this->buffer.substr(end_first_line, body_delim);
        headers = extract_headers(header_buff);
    } else {
        auto header_buff = this->buffer.substr(end_first_line);
        headers = extract_headers(header_buff);
    }

    if (!headers.empty()) {
        for (const auto& pair : headers) {
            auto save_result = this->headers.insert_or_assign(pair.first, pair.second);
            if (!save_result.second) {
                std::cerr << "\033[1;31m"
                          << "Error: "
                          << "\033[0m"
                          << "Could not save header: " << pair.first << std::endl;
            }
        }
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
