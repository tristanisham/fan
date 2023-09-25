#pragma once
#include "wren.hpp"
#include <filesystem>
#include <functional>
#include <memory>
#include <vector>
#include <string>

namespace vm {

// void vm_router_alloc(WrenVM* vm);

// void vm_router_finalize(void* data);

class Runtime {
public:
	Runtime();
	WrenInterpretResult execute(const std::string& code, const std::string& module = "main");
	void repl();
	void setEntryPoint(const std::filesystem::path& target) {this->entryPoint = target;};

private:
	std::shared_ptr<WrenVM> vm;
	std::filesystem::path entryPoint;
};
}  // namespace vm
