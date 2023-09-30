#include "cli.hpp"
#include <cstdio>
#include <cstring>
#include <iostream>

static const char* VERSION = "v0.2.0";

void cli::print_help() {
#if NDEBUG
	std::cout << "Void " << VERSION << "\n"
			  << "©️ 2023-present Tristan Isham\n"
			  << "----------------------------\n"
			  << "\n"
			  << "(More context coming soon...)" << std::endl;
#else
	std::cout << "Void DEBUG " << VERSION << "\n"
			  << "©️ 2023-present Tristan Isham\n"
			  << "----------------------------\n"
			  << "\n"
			  << "(More context coming soon...)" << std::endl;
#endif
}

void cli::print_version() {
#if NDEBUG
	printf("Void v0.0.1\n");
#else
	printf("Void DEBUG %s\n", VERSION);
#endif
}
