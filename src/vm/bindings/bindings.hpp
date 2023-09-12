#pragma once
#include "../../http/http.hpp"
#include "../../wren/wren.hpp"
#include <functional>
#include <iostream>

namespace vm::bindings {
void vm_serve(WrenVM* vm);

class Router {
public:
    void get(const std::string& path, std::function<void(http::Request)> handler);
    void post(const std::string& path, std::function<void(http::Request)> handler);
    void put(const std::string& path, std::function<void(http::Request)> handler);
    // Using del because delete is a keyword in C++
    void del(const std::string& path, std::function<void(http::Request)> handler);
    void patch(const std::string& path, std::function<void(http::Request)> handler);
    void options(const std::string& path, std::function<void(http::Request)> handler);
    void head(const std::string& path, std::function<void(http::Request)> handler);
};

void vm_router_alloc(WrenVM* vm);

void vm_router_finalize(void* data);

void vm_router_get(WrenVM* vm);

}