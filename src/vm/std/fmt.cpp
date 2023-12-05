#include "lib.hpp"
#include "wren.h"
#include <boost/format.hpp>
#include <wren.hpp>

/// Fmt.join(_, _) takes a list of strings (#1) and joins them with the delimeter (#2)
/// If the list contains anything other than strings the function will return null.
void lib::fmt::join(WrenVM* vm) {
	wrenEnsureSlots(vm, 4);
	auto count = wrenGetListCount(vm, 1);
	std::string buffer {};

	auto delim = wrenGetSlotString(vm, 2);
	auto typeOfDelim = wrenGetSlotType(vm, 2);
	if (!delim) {
		lib::abort(vm, "Paramater delimeter must be of type String. It's currently unknown");
	} else if (typeOfDelim != WREN_TYPE_STRING) {
		lib::abort(vm, (boost::format("Param delimeter must be of type String. It's currently: %1%") % lib::wren_type_to_string(typeOfDelim)).str());
	}

	for (int i = 0; i < count; i++) {
		wrenGetListElement(vm, 1, 0, 3);
		auto typeOf = wrenGetSlotType(vm, 3);
		if (typeOf != WREN_TYPE_STRING) {
			lib::abort(vm, (boost::format("Element %1% must be of type String. It's currently: %2%") % i % lib::wren_type_to_string(typeOf)).str());
		}

		auto data = wrenGetSlotString(vm, 3);
		if (data) {
			buffer.append(data);
			if (i < count - 1) {  // Avoid appending delimiter after the last element
				buffer.append(delim);
			}
		}
	}

	wrenSetSlotString(vm, 0, buffer.c_str());
}