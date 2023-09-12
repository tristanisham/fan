#pragma once
#include <memory>
#include <filesystem>
#include <fstream>
#include <optional>
#include <sstream>
#include <stdio.h>
#include <string>
#include "../server/server.hpp"
#include "bindings/bindings.hpp"

namespace vm {
int serve(int port = 8080);

class VirtualMachine : public server::Router {
private:
    std::shared_ptr<WrenVM> vm;

public:
    VirtualMachine();
    ~VirtualMachine();

    http::Response handle(const http::Request& request) override;
};

}