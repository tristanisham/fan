#include "server.hpp"
#include <cstring>

server::Client::Client(const int& client_id) { this->client_fd = client_id; }

void server::Client::job()
{
    char memory[1024];
    int bytes_recvd;
    
    auto response = http::Response{"Hello world!"};
    bytes_recvd = recv(this->client_fd, memory, 1024, 0);
    std::cout << "Current Thread ID " << std::this_thread::get_id() << std::endl;
    // std::cout << memory << "\n" << response << std::endl;
    std::cout << response.to_string().c_str() << std::endl;


    if (send(this->client_fd, response.to_string().c_str(), std::strlen(response.to_string().c_str()), 0) < 0) {
        std::cerr << "Error sending client a response" << std::endl;
    };

    close(this->client_fd);
}
