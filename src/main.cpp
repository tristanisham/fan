#include "server/router/router.hpp"
#include "server/server.hpp"
#include "vm/vm.hpp"
#include <memory>

#ifdef NDEBUG
const char VERSION[] = "v0.0.1";
#else
const char VERSION[] = "v0.0.1 (debug)";
#endif

int main(int argc, char** argv)
{
    std::string PORT { "8080" };
    if (argc >= 2) {
        auto first_arg = std::string { argv[1] };
        if (first_arg == "--version" || first_arg == "-v") {
            std::cout << VERSION << std::endl;
            std::exit(0);
        }

        PORT = std::string { argv[1] };
    }

    auto vm = vm::VirtualMachine {};

    return server::start(std::atoi(PORT.c_str()));
}
