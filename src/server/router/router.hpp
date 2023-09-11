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

namespace server::wren {

class VirtualMachine: public server::Router {
private:
  std::shared_ptr<WrenVM> vm;
public:
    VirtualMachine();
    ~VirtualMachine();

    void run(const std::string& script, const std::string& module = "main");
    http::Response handle(const http::Request& request) override;
};


}
