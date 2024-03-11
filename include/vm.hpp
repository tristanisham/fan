#pragma once
#include "nlohmann/json.hpp"
#include <filesystem>
#include <map>
#include <string>
#include <string_view>
#include <unordered_map>
#include <wren.hpp>

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

	// void addCallHandle(std::string const& key, std::string const& signature);

private:
	std::shared_ptr<WrenVM> vm;
	std::filesystem::path entryPoint;
	std::map<std::string, WrenHandle*> handles;
};

/**
 * @throws std::invalid_argument if slot is not a Map.
 */
nlohmann::json map_to_json(WrenVM* vm, int mapSlot, int keySlot, int valSlot);

}  // namespace vm
