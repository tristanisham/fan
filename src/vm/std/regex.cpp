#include "vm.hpp"
#include <boost/algorithm/string/classification.hpp>
#include <boost/algorithm/string/split.hpp>
#include <exception>
#include <lib.hpp>
#include <memory>  // Include for std::unique_ptr
#include <regex>
#include <vector>

struct ParameterTypes {
	WrenType input;
	WrenType pattern;
	WrenType flags;

	ParameterTypes(WrenType in, WrenType pt, WrenType fl)
		: input(in)
		, pattern(pt)
		, flags(fl) {
	}
	ParameterTypes() = default;
};

// No need for closeParameterTypes function anymore since unique_ptr handles deletion automatically

std::unique_ptr<ParameterTypes> loadParameters(WrenVM* vm) {
	wrenEnsureSlots(vm, 4);

	auto pt = std::make_unique<ParameterTypes>();  // Use make_unique to create a unique_ptr

	if (wrenGetSlotType(vm, 1) != WREN_TYPE_STRING) {
		lib::abort(vm, "Type Error: value \"input\" (1) must be of type String");
		return nullptr;	 // Returning nullptr is safe, unique_ptr will handle cleanup
	}

	pt->input = WREN_TYPE_STRING;

	if (wrenGetSlotType(vm, 2) != WREN_TYPE_STRING) {
		lib::abort(vm, "Type Error: value \"pattern\" (2) must be of type String");
		return nullptr;	 // Same here
	}

	pt->pattern = WREN_TYPE_STRING;

	auto flagsType = wrenGetSlotType(vm, 3);
	switch (flagsType) {
	case WREN_TYPE_STRING:
		pt->flags = WREN_TYPE_STRING;
		break;
	case WREN_TYPE_LIST:
		pt->flags = WREN_TYPE_LIST;
		break;
	case WREN_TYPE_NULL:
		pt->flags = WREN_TYPE_NULL;
		break;
	default:
		lib::abort(vm, "Type Error: value \"flags\" (3) must be of type String, List, or null");
		return nullptr;	 // And here
	}

	return pt;	// Return the unique_ptr, ownership is transferred
}

// extractFlags returns a valid collection of Regex Flags or throws a std::exception.
std::regex::flag_type extractFlags(std::vector<std::string> const& tokens) {

	std::regex::flag_type local_flags;

	for (auto const& flag : tokens) {
		if (flag == "ECMAScript") {
			local_flags |= std::regex_constants::ECMAScript;
		} else if (flag == "icase") {
			local_flags |= std::regex_constants::icase;
		} else if (flag == "nosubs") {
			local_flags |= std::regex_constants::nosubs;
		} else if (flag == "optimize") {
			local_flags |= std::regex_constants::optimize;
		} else if (flag == "collate") {
			local_flags |= std::regex_constants::collate;
		} else if (flag == "multiline") {
			local_flags |= std::regex_constants::multiline;
		} else if (flag == "extended") {
			local_flags |= std::regex_constants::extended;
		} else if (flag == "awk") {
			local_flags |= std::regex_constants::awk;
		} else if (flag == "grep") {
			local_flags |= std::regex_constants::grep;
		} else if (flag == "egrep") {
			local_flags |= std::regex_constants::egrep;
		} else {
			// Handle unknown flag name
			throw(boost::format("Unknown regex flag: %1%") % flag).str();
		}
	}

	return local_flags;
}

// TODO: eventually extract the internals of the next two functions into a local private function.

void lib::regex::contains(WrenVM* vm) {
	auto p_types = loadParameters(vm);	// Automatically cleaned up when p_types goes out of scope
	std::string input { wrenGetSlotString(vm, 1) };
	std::string pattern_in { wrenGetSlotString(vm, 2) };

	std::regex pattern;
	bool match = false;
	if (p_types->flags == WREN_TYPE_STRING) {

		std::string regex_flags { wrenGetSlotString(vm, 3) };
		std::vector<std::string> tokens;
		boost::split(tokens, regex_flags, boost::is_any_of("|"));

		std::regex::flag_type local_flags;

		try {
			local_flags = extractFlags(tokens);
		} catch (std::exception const& err) {
			lib::abort(vm, err.what());
			return;
		}

		pattern = std::regex { pattern_in, local_flags };
		match = static_cast<bool>(std::regex_search(input, pattern));

	} else if (p_types->flags == WREN_TYPE_LIST) {
		auto listCount = wrenGetListCount(vm, 3);
		auto slotCount = wrenGetSlotCount(vm);
		wrenEnsureSlots(vm, slotCount + 1);
		std::vector<std::string> tokens;
		for (int i = 0; i < listCount; i++) {
			wrenGetListElement(vm, 3, i, slotCount + 1);
			std::string flagVal = { wrenGetSlotString(vm, slotCount + 1) };
			tokens.emplace_back(flagVal);
		}

		std::regex::flag_type local_flags;

		try {
			local_flags = extractFlags(tokens);
		} catch (std::exception const& err) {
			lib::abort(vm, err.what());
			return;
		}

		pattern = std::regex { pattern_in, local_flags };
		match = static_cast<bool>(std::regex_search(input, pattern));

	} else if (p_types->flags == WREN_TYPE_NULL) {
		pattern = std::regex { pattern_in };
		match = static_cast<bool>(std::regex_search(input, pattern));
	}

	DEBUG_PRINT("CPP Search: " << ((match) ? "true" : "false"))
	wrenSetSlotBool(vm, 0, match);
}

void lib::regex::match(WrenVM* vm) {
	auto p_types = loadParameters(vm);	// Automatically cleaned up when p_types goes out of scope
	std::string input { wrenGetSlotString(vm, 1) };
	std::string pattern_in { wrenGetSlotString(vm, 2) };

	std::regex pattern;
	bool match = false;
	if (p_types->flags == WREN_TYPE_STRING) {

		std::string regex_flags { wrenGetSlotString(vm, 3) };
		std::vector<std::string> tokens;
		boost::split(tokens, regex_flags, boost::is_any_of("|"));

		std::regex::flag_type local_flags;

		try {
			local_flags = extractFlags(tokens);
		} catch (std::exception const& err) {
			lib::abort(vm, err.what());
			return;
		}

		pattern = std::regex { pattern_in, local_flags };
		match = static_cast<bool>(std::regex_match(input, pattern));

	} else if (p_types->flags == WREN_TYPE_LIST) {
		auto listCount = wrenGetListCount(vm, 3);
		auto slotCount = wrenGetSlotCount(vm);
		wrenEnsureSlots(vm, slotCount + 1);
		std::vector<std::string> tokens;
		for (int i = 0; i < listCount; i++) {
			wrenGetListElement(vm, 3, i, slotCount + 1);
			std::string flagVal = { wrenGetSlotString(vm, slotCount + 1) };
			tokens.emplace_back(flagVal);
		}

		std::regex::flag_type local_flags;

		try {
			local_flags = extractFlags(tokens);
		} catch (std::exception const& err) {
			lib::abort(vm, err.what());
			return;
		}

		pattern = std::regex { pattern_in, local_flags };
		match = static_cast<bool>(std::regex_match(input, pattern));

	} else if (p_types->flags == WREN_TYPE_NULL) {
		pattern = std::regex { pattern_in };
		match = static_cast<bool>(std::regex_match(input, pattern));
	}

	DEBUG_PRINT("CPP Search: " << ((match) ? "true" : "false"))
	wrenSetSlotBool(vm, 0, match);
}
