#include "boost/format.hpp"
#include "vm.hpp"
#include <cstdlib>
#include <cstring>
#include <errno.h>
#include <filesystem>
#include <lib.hpp>
#include <stdlib.h>

#ifdef _WIN32
#include <tlhelp32.h>
#include <windows.h>
#else
#include <unistd.h>
#endif

void lib::os::getEnv(WrenVM* vm) {
	const char* key = wrenGetSlotString(vm, 1);
	auto val = std::getenv(key);
	wrenEnsureSlots(vm, 1);
	if (val == NULL) {
		wrenSetSlotNull(vm, 0);
	} else {
		wrenSetSlotString(vm, 0, val);
	}
}

void lib::os::setEnv(WrenVM* vm) {
	const char* key = wrenGetSlotString(vm, 1);

	auto type = wrenGetSlotType(vm, 2);
	switch (type) {
	case WREN_TYPE_NULL: {
		if (unsetenv(key) == -1) {
			lib::abort(vm, strerror(errno));
		}
		break;
	}
	case WREN_TYPE_STRING: {
		const char* val = wrenGetSlotString(vm, 2);
		if (setenv(key, val, 1) == -1) {
			lib::abort(vm, strerror(errno));
		}
		break;
	}
	default: {
		std::string msg = (boost::format("Invalid type: expected string, or null. Recieved: %1%") % lib::wren_type_to_string(type)).str();
		lib::abort(vm, msg.c_str());
		break;
	}
	}
}

void lib::os::cwd(WrenVM* vm) {
	wrenEnsureSlots(vm, 1);
	auto cwd = std::filesystem::current_path();
	wrenSetSlotString(vm, 0, cwd.c_str());
}

void lib::os::pid(WrenVM* vm) {
	wrenEnsureSlots(vm, 1);
#ifdef _WIN32
	DWORD pid = GetCurrentProcessId();
#else
	pid_t pid = getpid();
#endif

	double dPid = static_cast<double>(pid);

	wrenSetSlotDouble(vm, 0, dPid);
}

// Cross-platform method to find PPID on Windows on Unix systems.
double getParentProcessId() {

#ifdef _WIN32
	HANDLE hSnapshot = CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
	if (hSnapshot == INVALID_HANDLE_VALUE) {
		return 0;  // Snapshot creation failed.
	}

	PROCESSENTRY32 pe32;
	pe32.dwSize = sizeof(PROCESSENTRY32);

	if (Process32First(hSnapshot, &pe32)) {
		DWORD currentPID = GetCurrentProcessId();
		do {
			if (pe32.th32ProcessID == currentPID) {
				CloseHandle(hSnapshot);
				return static_cast<double>(pe32.th32ParentProcessID);
			}
		} while (Process32Next(hSnapshot, &pe32));
	}

	CloseHandle(hSnapshot);
	return 0;  // Parent process not found.
#else
	pid_t ppid = getppid();
	double dPpid = static_cast<double>(ppid);
	return dPpid;
#endif
}

void lib::os::ppid(WrenVM* vm) {
	wrenEnsureSlots(vm, 1);

	double dPpid = getParentProcessId();

	wrenSetSlotDouble(vm, 0, dPpid);
}

std::optional<std::string> vm::getOperatingSystem() {
#if defined(_WIN32) || defined(_WIN64)
	return "windows";
#elif defined(__APPLE__) || defined(__MACH__)
	return "macos";
#elif defined(__linux__)
	return "linux";
#elif defined(__unix__)
	return "unix";
#elif defined(_POSIX_VERSION)
	return "posix";
#else
	return std::nullopt;
#endif
}

std::optional<std::string> vm::getPlatformArchitecture() {
#if defined(__i386__) || defined(_M_IX86)
	return "386";
#elif defined(__x86_64__) || defined(_M_X64) || defined(_M_AMD64)
	return "amd64";
#elif defined(__arm__) || defined(_M_ARM)
	return "arm";
#elif defined(__aarch64__)
	return "arm64";
#elif defined(__mips64) || defined(__mips64__)
	return "mips64";
#elif defined(__powerpc64__) || defined(_ARCH_PPC64)
	return "ppc64";
#elif defined(__s390x__)
	return "s390x";
#else
	return std::nullopt;
#endif
}

void lib::os::runtimeOS(WrenVM* vm) {
	wrenEnsureSlots(vm, 1);
	auto os = vm::getOperatingSystem();
	if (os) {
		wrenSetSlotString(vm, 0, os.value().c_str());
	} else {
		wrenSetSlotNull(vm, 0);
	}
}

void lib::os::runtimeArch(WrenVM* vm) {
	wrenEnsureSlots(vm, 1);
	auto arch = vm::getPlatformArchitecture();
	if (arch) {
		wrenSetSlotString(vm, 0, arch.value().c_str());
	} else {
		wrenSetSlotNull(vm, 0);
	}
}