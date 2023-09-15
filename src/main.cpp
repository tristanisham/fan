#include "cli.hpp"
#include "vm.hpp"
#include "void.hpp"
#include <cstdlib>
#include <cstring>
#include <filesystem>
#include <fstream>

int main(int argc, char** argv)
{
	vm::Runtime runtime {};
	if (argc <= 1) {
		runtime.repl();
		std::exit(0);
	}

	std::filesystem::path target { argv[argc - 1] };
	if (std::filesystem::exists(target) && target.extension() == ".wren") {
		std::ifstream file(target);
		if (!file.is_open()) {
			throw std::string { "Unable to run " }.append(target);
		}

		std::stringstream buffer;
		buffer << file.rdbuf();
		runtime.execute(buffer.str());
		file.close();
	}

	return 0;
}
