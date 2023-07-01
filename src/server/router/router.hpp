#pragma once
#include <iostream>

namespace server {
class Router {
public:
    // Move/Copy semantics
    Router() = default;
    Router(const Router&) = default;
    Router(Router&&) = default;
    Router& operator=(const Router&) = default;
    Router& operator=(Router&&) = default;

    void get(const std::string& route);
    void post(const std::string& route);
    void put(const std::string& route);
    void del(const std::string& route);
    void head(const std::string& route);
    void options(const std::string& route);
    void patch(const std::string& route);
    void connect(const std::string& route);

private:
};
}