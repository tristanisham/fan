#pragma once
namespace server {
    class Router {
        public:
    // Move/Copy semantics
    Router() = default;
    Router(const Router&) = default;
    Router(Router&&) = default;
    Router& operator=(const Router&) = default;
    Router& operator=(Router&&) = default;
    };
}