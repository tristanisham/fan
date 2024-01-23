#include "cli.hpp"
#include "vm.hpp"
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <curl/curl.h>
#include <filesystem>
#include <fstream>
#include <sstream>

/**
 * Fan is a language runtime focused on making software devlopment easy,
 * performant, and fun. The Fan command line tool features a simple REPL and
 * the ability to execute a script, typically the last argument value on the
 * command line if no other commands or flags are passed.
 */
int main(int argc, char* argv[]) {
	if (argc <= 1) {
		cli::print_help();
	}

	for (int i = 0; i < argc; ++i) {
		if (std::strcmp("version", argv[i]) == 0) {
			cli::print_version();
			std::exit(0);
		} else if (std::strcmp("help", argv[i]) == 0) {
			cli::print_help();
			std::exit(0);
		} else {

			if (std::strcmp("run", argv[i]) == 0 || std::strcmp("r", argv[i]) == 0) {

				if (argc <= i + 1) {
					fprintf(stderr, "Must supply a path to execute\n");
				}

				std::filesystem::path target { argv[i + 1] };
				if (!std::filesystem::exists(target)) {
					fprintf(stderr, "File does not exist, or is not .fan\n");
					return 1;
				}

				vm::Runtime::setProgramArgs(argc, argv);

				vm::Runtime runtime {};	 // Move the vector to the runtime instead of copying
				runtime.setEntryPoint(target.c_str());

				std::ifstream file(target);
				if (!file.is_open()) {
					printf("Unable to run %s", target.c_str());
					return 1;
				}

				std::stringstream buffer;
				buffer << file.rdbuf();
				runtime.execute(buffer.str(), target.c_str());
			} else if (std::strcmp("repl", argv[i]) == 0) {
				vm::Runtime runtime {};
				runtime.repl();
				std::exit(0);
			}
		}
	}

	return 0;
}
