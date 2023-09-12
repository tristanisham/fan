#include "vm.hpp"
#include "../server/server.hpp"


int vm::serve(int port) {
    return server::start(port);
}