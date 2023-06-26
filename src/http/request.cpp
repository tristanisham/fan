#include "./http.hpp"

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

    int line = 0;



    for (size_t i = 0; i < this->buffer.length(); i++) {
        char8_t ch = this->buffer[i];
        
    }

    return 0;
}
