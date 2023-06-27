#include "server.hpp"
#include <cstring>
#include "../http/http.hpp"


server::Client::Client(const int& client_id) { this->client_fd = client_id; }

void server::Client::job()
{
    auto request = http::Request { this->client_fd };
    std::cout << request << std::endl;

    auto response = http::Response { "Hello world!" };
    // std::cout << "DEBUG: Current Thread ID " << std::this_thread::get_id() << "\n" << std::endl;

    std::string response_str = response.to_string();
    if (send(this->client_fd, response_str.c_str(), response_str.size(), 0) < 0) {
        std::cerr << "Error sending client a response" << std::endl;
    };

    close(this->client_fd);
}
