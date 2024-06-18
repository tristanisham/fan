#pragma once
#include <cstdio>

namespace meta {
// Traditional SEMVER. The gopher can't get you here.
inline auto VERSION = "v0.1.1";

inline void print_version() {
#if NDEBUG
	printf("Fan %s\n", VERSION);
#else
	printf("Fan DEBUG %s\n", VERSION);
#endif
}



}  // namespace meta
