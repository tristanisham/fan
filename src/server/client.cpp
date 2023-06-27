#include "../http/http.hpp"
#include "server.hpp"
#include <cstring>

server::Client::Client(const int& client_id) { this->client_fd = client_id; }

void server::Client::job()
{
    auto request = http::Request { this->client_fd };
    auto response = http::Response { "Hey, right back!\n" };

    response.set_header("Content-Length", std::to_string((int)response.content_length()));
    response.set_header("Content-Type", "text/plain");
    // std::cout << "DEBUG: Current Thread ID " << std::this_thread::get_id() << "\n" << std::endl;
    // std::cout << response << std::endl;

    std::string response_str = response.to_string();
    if (send(this->client_fd, response_str.c_str(), response_str.size(), 0) < 0) {
        std::cerr << "Error sending client a response" << std::endl;
    };

    int close_err = close(this->client_fd);
    if (close_err < 0) {
        std::cerr << "Error: " << close_err << " closing the connection with " << this->client_fd
                  << std::endl;
    }
}
