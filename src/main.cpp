#include "server/server.hpp"
#include "lang/lang.hpp"

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
    } else if (first_arg == "run") {
      if (argc >= 3) {
        std::string start_file_path{argv[2]};
        return lang::run_file(start_file_path);
      } else {
        return lang::run_repl();
      }
    }

    PORT = std::string { argv[1] };
  }

  return server::start(std::atoi(PORT.c_str()));
}
