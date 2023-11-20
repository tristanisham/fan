#include "cli.hpp"
#include <cstdio>
#include <cstring>
#include <iostream>

static const char* VERSION = "v0.3.0";

void cli::print_help() {
#if NDEBUG
	std::cout << "Fan " << VERSION << "\n"
			  << "©️ 2023-present Tristan Isham\n"
			  << "----------------------------\n"
			  << "\n"
			  << "run <script.fan>"
			  << "\n"
			  << "version"
			  << "\n"
			  << "help"
			  << "\n"
			  << std::endl;
#else
	std::cout << "Fan DEBUG " << VERSION << "\n"
			  << "©️ 2023-present Tristan Isham\n"
			  << "----------------------------\n"
			  << "\n"
			  << "run <script.fan>"
			  << "\n"
			  << "version"
			  << "\n"
			  << "help"
			  << "\n"
			  << std::endl;
#endif
}

void cli::print_version() {
#if NDEBUG
	printf("Fan v0.0.1\n");
#else
	printf("Fan DEBUG %s\n", VERSION);
#endif
}
