#pragma once
#include "wren.hpp"
#include <functional>
#include <memory>
#include <vector>

namespace vm {

// void vm_router_alloc(WrenVM* vm);

// void vm_router_finalize(void* data);

class Runtime {
public:
	Runtime();
	WrenInterpretResult execute(const std::string& code, const std::string& module = "main");
	void repl();

private:
	std::shared_ptr<WrenVM> vm;
};
}  // namespace vm
