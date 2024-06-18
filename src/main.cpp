#include "vm.hpp"
#include "wren.h"
#include <CLI11.hpp>
#include <cstddef>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <filesystem>
#include <fstream>
#include <meta.hpp>
#include <sstream>

/**
 * Fan is a language runtime focused on making software development easy,
 * performant, and fun. The Fan command line tool features a simple REPL and
 * the ability to execute a script, typically the last argument value on the
 * command line if no other commands or flags are passed.
 */
int main(int argc, char* argv[]) {
	CLI::App app { "A batteries-included programming language", "Fan" };
	argv = app.ensure_utf8(argv);

	app.add_flag("-v,--version", [](std::size_t n) {
		meta::print_version();
	});

	auto subcmd_run = app.add_subcommand("run", "Run a Fan script");
	std::string run_target;
	subcmd_run->add_option("file", run_target, "Fan script to run");
	subcmd_run->callback([&]() {
		std::filesystem::path target { run_target };
		if (!std::filesystem::exists(target)) {
			fprintf(stderr, "File does not exist, or is not .fan\n");
			throw CLI::RuntimeError(1);
		}

		vm::Runtime::setProgramArgs(argc, argv);

		vm::Runtime runtime {};	 // Move the vector to the runtime instead of copying
		runtime.setEntryPoint(target.c_str());

		std::ifstream file(target);
		if (!file.is_open()) {
			printf("Unable to run %s", target.c_str());
			throw CLI::RuntimeError(1);
		}

		std::stringstream buffer;
		buffer << file.rdbuf();
		auto result = runtime.execute(buffer.str(), target.c_str());
		switch (result) {
		case WREN_RESULT_RUNTIME_ERROR:
			throw CLI::Success();
		default:
			throw CLI::RuntimeError(1);
		}
	});

	auto subcmd_repl = app.add_subcommand("repl", "Start the Fan repl");
	subcmd_repl->callback([&]() {
		vm::Runtime runtime {};
		runtime.repl();
		throw CLI::Success();
	});

	// app.require_subcommand();


	CLI11_PARSE(app, argc, argv);

	return 0;
}
