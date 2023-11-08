#include "cli.hpp"
#include "vm.hpp"
#include "void.hpp"
#include <cassert>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <filesystem>
#include <fstream>
#include <sstream>
#include <vector>

// int global_argc;
// char** global_argv;

// void allocate_global_args(std::vector<std::string> const& args, char*** output) {
// 	*output = new char*[args.size() + 1];
// 	for (size_t i = 0; i < args.size(); ++i) {
// 		(*output)[i] = new char[args[i].size() + 1];
// 		std::strcpy((*output)[i], args[i].c_str());
// 	}
// 	// The last element is a nullptr to mark the end
// 	(*output)[args.size()] = nullptr;
// }

// void deallocate_global_args(char*** output, size_t len) {
// 	// Cleanup
// 	for (size_t i = 0; i < len; ++i) {
// 		delete[] (*output)[i];
// 	}
// 	delete[] *output;  // Free the array of pointers
// 	*output = nullptr;
// }

/**
 * Void is a language runtime focused on making software devlopment easy,
 * performant, and fun. The Void command line tool features a simple REPL and
 * the ability to execute a script, typically the last argument value on the
 * command line if no other commands or flags are passed.
 */
int main(int argc, char* argv[]) {
	if (argc <= 1) {
		vm::Runtime runtime {};
		runtime.repl();
		std::exit(0);
	}

	for (int i = 0; i < argc; ++i) {
		if (std::strcmp("version", argv[i]) == 0) {
			cli::print_version();
			std::exit(0);
		} else if (std::strcmp("help", argv[i]) == 0) {
			cli::print_help();
			std::exit(0);
		} else if (std::strcmp("run", argv[i]) == 0 || std::strcmp("r", argv[i]) == 0) {

			if (argc <= i + 1) {
				fprintf(stderr, "Must supply a path to execute\n");
			}

			std::filesystem::path target { argv[i + 1] };
			if (!std::filesystem::exists(target)) {
				fprintf(stderr, "File does not exist, or is not .vd\n");
				return 1;
			}

			vm::Runtime::setProgramArgs(argc, argv);

			vm::Runtime runtime {};	 // Move the vector to the runtime instead of copying
			runtime.setEntryPoint(target);

			std::ifstream file(target);
			if (!file.is_open()) {
				printf("Unable to run %s", target.c_str());
				return 1;
			}

			std::stringstream buffer;
			buffer << file.rdbuf();
			runtime.execute(buffer.str());
		}
	}

	return 0;
}
