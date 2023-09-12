#pragma once
#include "../../http/http.hpp"
#include "../../wren/wren.hpp"
#include <functional>
#include <iostream>
#include <memory>
#include <string>
#include <unordered_map>
#include <variant>

namespace server {
typedef std::variant<int, double, char, const char*> BasicCValue;
typedef std::function<BasicCValue(void*)> Handler;

class Router {
protected:
    using RouteMap = std::unordered_map<std::string, Handler>;
    std::unordered_map<std::string, RouteMap> routes;

public:
    void addRoute(const std::string& method, const std::string& path, Handler handler)
    {
        routes[method][path] = handler;
    }

    bool handleRequest(const std::string& method, const std::string& path, void* ctx)
    {
        if (routes.count(method) && routes[method].count(path)) {
            routes[method][path](ctx);
            return true;
        }
        return false;
    }

    virtual http::Response handle(const http::Request& request) { return http::Response(""); };
    virtual ~Router() = default;
};

}
