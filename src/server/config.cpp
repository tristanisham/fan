#include "router/router.hpp"
#include "server.hpp"
#include <memory>
#include "../vm/vm.hpp"

void server::Config::bind_client_fd(const int& client_fd) { this->client_fd = client_fd; }

void server::Config::add_router(std::shared_ptr<Router> router) { this->router = router; }

std::shared_ptr<server::Config> server::default_config()
{
    auto default_conf = Config {};
    auto router = vm::VirtualMachine {};
    auto router_ptr = std::make_shared<vm::VirtualMachine>(router);
    default_conf.add_router(router_ptr);  // Not sure if memory leak waiting to h
    return std::make_shared<Config>(default_conf);
}

http::Response server::Config::route(const http::Request& req) { return this->router->handle(req); }
