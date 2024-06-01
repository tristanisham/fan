#pragma once
#include <filesystem>
#include <string>
#include <string_view>
#include <unordered_map>
#include <wren.hpp>

#ifndef NDEBUG
#include <rang.hpp>
#define DEBUG_PRINT(...) std::cout << rang::fg::blue << "DEBUG " << rang::fg::reset << __VA_ARGS__ << std::endl;
#else
#define DEBUG_PRINT(...)
#endif

namespace vm {

size_t createVmMap(WrenVM* vm, const int& slot, const std::unordered_map<std::string, std::string>& entries);

// std::vector<std::variant<double, std::string, bool>> getList(WrenVM* vm, int listSlot, int itemSlot);

std::string exec(const char* cmd);
std::string trim(const std::string& s);

constexpr std::string_view getOperatingSystem();
constexpr std::string_view getPlatformArchitecture();

class Runtime {
public:
	Runtime();
	~Runtime();
	[[nodiscard]] WrenInterpretResult execute(const std::string& code, const std::string& module = "main") const;
	void repl() const;
	void setEntryPoint(const std::string& target);
	static void setProgramArgs(int argc, char** argv);

private:
	std::shared_ptr<WrenVM> vm;
	std::filesystem::path entryPoint;
};

}  // namespace vm
