#pragma once
#include "../http/http.hpp"
#include <functional>
#include <iostream>
#include <memory>


namespace server {
class Router {
private:
public:
    // Move/Copy semantics
    Router() = default;
    Router(const Router&) = default;
    Router(Router&&) = default;
    Router& operator=(const Router&) = default;
    Router& operator=(Router&&) = default;

    // Routing semantics
    void get(std::string route, std::function<http::Response(http::Request req)> ctx);
    void put(std::string route, std::function<http::Response(http::Request req)> ctx);
    void del(std::string route, std::function<http::Response(http::Request req)> ctx);
    void head(std::string route, std::function<http::Response(http::Request req)> ctx);
    void options(std::string route, std::function<http::Response(http::Request req)> ctx);
    void patch(std::string route, std::function<http::Response(http::Request req)> ctx);
    void trace(std::string route, std::function<http::Response(http::Request req)> ctx);
};

std::shared_ptr<Router> default_router();

}
