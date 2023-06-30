#include "server.hpp"
#include <memory>

void server::Config::bind_client_fd(const int& client_fd) {
    this->client_fd = client_fd;
}

void server::Config::add_router(const Router& router) {
    this->router = router;
}

std::shared_ptr<server::Config> server::default_config() {
    auto default_conf = Config{};
    return std::make_shared<Config>(default_conf);
}