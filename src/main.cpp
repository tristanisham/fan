#include "cli.hpp"
#include "void.hpp"
#include <cstdlib>
#include <cstring>
#include <filesystem>
#include <fstream>

/**
 * Void is a language runtime focused on making software devlopment easy,
 * performant, and fun. The Void command line tool features a simple REPL and
 * the ability to execute a script, typically the last argument value on the
 * command line if no other commands or flags are passed.
 */
int main(int argc, char** argv) {
	if (argc <= 1) {
		vm::Runtime runtime {};
		runtime.repl();
		std::exit(0);
	}

	// I need to
	for (int i = 0; i < argc; i++) {
		if (strcmp(argv[i], "--version") == 0 || strcmp(argv[i], "-V") == 0) {
			cli::print_version();
			std::exit(0);
		} else if (strcmp(argv[i], "--help") == 0 || strcmp(argv[i], "-H") == 0) {
			cli::print_help();
			std::exit(0);
		}
	}

	vm::Runtime runtime {};
	std::filesystem::path target { argv[argc - 1] };
	if (std::filesystem::exists(target) && target.extension() == ".vd") {
		std::ifstream file(target);
		if (!file.is_open()) {
			printf("Unable to run %s", target);
			return 1;
		}

		std::stringstream buffer;
		buffer << file.rdbuf();
		runtime.execute(buffer.str());
		file.close();
	} else {
		fprintf(stderr, "File %s does not exist, or is not .vd\n", target.c_str());
		return 1;
	}

	return 0;
}
