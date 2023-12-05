#pragma once
#include <wren.hpp>
#include <filesystem>
#include <string>
#include <string_view>
#include <unordered_map>

namespace vm {

size_t createVmMap(WrenVM* vm, const size_t& slot, const std::unordered_map<std::string, std::string>& entries);

// std::vector<std::variant<double, std::string, bool>> getList(WrenVM* vm, int listSlot, int itemSlot);

std::string exec(const char* cmd);

constexpr std::string_view getOperatingSystem();
constexpr std::string_view getPlatformArchitecture();

class Runtime {
public:
	Runtime();
	WrenInterpretResult execute(const std::string& code, const std::string& module = "main");
	void repl();
	void setEntryPoint(const std::string& target);
	static void setProgramArgs(int argc, char** argv);

private:
	std::shared_ptr<WrenVM> vm;
	std::filesystem::path entryPoint;
};

}  // namespace vm
