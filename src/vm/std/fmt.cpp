// #include "boost/format/format_fwd.hpp"
// #include "lib.hpp"
// #include "wren.h"
// #include <boost/format.hpp>
// #include <wren.hpp>


/// Fmt.join(_, _) takes a list of strings (#1) and joins them with the delimeter (#2)
/// If the list contains anything other than strings the function will return null.
// void lib::fmt::join(WrenVM* vm) {
// 	wrenEnsureSlots(vm, 4);
// 	auto count = wrenGetListCount(vm, 1);
// 	std::string buffer;

// 	auto typeOfDelim = wrenGetSlotType(vm, 2);
// 	if (typeOfDelim != WREN_TYPE_STRING) {
// 		lib::abort(vm, (boost::format("Param delimeter must be of type String. It's currently: %1%") % lib::wren_type_to_string(typeOfDelim)).str());
// 	}

// 	auto delim = wrenGetSlotString(vm, 2);
// 	if (delim == nullptr) {
// 		lib::abort(vm, "Paramater delimeter must be of type String. It's currently unknown");
// 	}

// 	for (int i = 0; i < count; i++) {
// 		wrenGetListElement(vm, 1, i, 3);
// 		auto typeOf = wrenGetSlotType(vm, 3);
// 		if (typeOf != WREN_TYPE_STRING) {
// 			lib::abort(vm, (boost::format("Element %1% must be of type String. It's currently: %2%") % i % lib::wren_type_to_string(typeOf)).str());
// 		}

// 		auto data = wrenGetSlotString(vm, 3);
		
// 		if (data != nullptr) {
// 			buffer.append(data);
// 			if (i < count - 1) {  // Avoid appending delimiter after the last element
// 				buffer.append(delim);
// 			}
// 		} else {
// 			lib::abort(vm, (boost::format("Invalid slot %1% . Memory unreadable.") % i).str());
// 		}
// 	}

// 	wrenSetSlotString(vm, 0, buffer.c_str());
// }