#include "../http/http.hpp"
#include "server.hpp"
#include <cstring>
#include <exception>
#include <memory>

// server::Client::Client(const int& client_id) { this->client_fd = client_id; }
server::Backend::Backend(const int& client_id, Config* config)
{
    this->client_fd = client_id;
    this->config = config;
};

void server::Backend::job()
{
    try {
        auto request = http::Request { this->client_fd };
        auto response = this->config->route(request);

        #ifndef NDEBUG
        // std::cout << "DEBUG: Current Thread ID " << std::this_thread::get_id() << "\n" << std::endl;
        // TO BE DELETED
        std::cout << "Method: " << request.method << "\nRoute: " << request.route
                  << "\nStandard: " << request.http_version << "\nHeaders:\n";
        for (const auto& header : request.headers) {
            std::cout << "\t" << header.first << ": " << header.second << "\n";
        }
        std::cout << "Body:\n" << request.body << std::endl;
        // END DELETE
        #endif

        std::string response_str = response.to_string();
        if (send(this->client_fd, response_str.c_str(), response_str.size(), 0) < 0) {
            std::cerr << "\033[1;31m"
                      << "Error: "
                      << "\033[0m"
                      << "sending client a response" << std::endl;
        };

        int close_err = close(this->client_fd);
        if (close_err < 0) {
            std::cerr << "\033[1;31m"
                      << "Error: "
                      << "\033[0m" << close_err << " closing the connection with " << this->client_fd << std::endl;
        }
    } catch (http::Status e) {
        auto response = http::Response { e.what() };
        response.status_code(e.status_code());
        std::string response_str = response.to_string();
        if (send(this->client_fd, response_str.c_str(), response_str.size(), 0) < 0) {
            std::cerr << "\033[1;31m"
                      << "Error: "
                      << "\033[0m"
                      << "sending client a response" << std::endl;
        };

        int close_err = close(this->client_fd);
        if (close_err < 0) {
            std::cerr << "\033[1;31m"
                      << "Error: "
                      << "\033[0m" << close_err << " closing the connection with " << this->client_fd << std::endl;
        }
    }
}
