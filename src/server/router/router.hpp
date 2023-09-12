#pragma once
#include "../../http/http.hpp"
#include "../../wren/wren.hpp"
#include <functional>
#include <iostream>
#include <memory>

namespace server {
  class Router {
    public:
      virtual http::Response handle(const http::Request& request) {return http::Response("");};
      virtual ~Router() = default;
  };

}

