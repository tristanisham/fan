cmake_minimum_required(VERSION 3.16)
project(fan)

set(CMAKE_CXX_CLANG_FORMAT "clang-format -style=clang-format.json -fallback-style=Google")
set(CMAKE_CXX_STANDARD 20)

set(CMAKE_EXPORT_COMPILE_COMMANDS 1)

include_directories(include)
include_directories(vendor/boost_1_83_0)

# set(LEVELDB_BUILD_TESTS OFF)
# set(LEVELDB_BUILD_BENCHMARKS OFF)
#option(CURL_STATICLIB "Set to ON to build libcurl with static linking."  ON)
# Add CURL as a subdirectory
# Set CURL static library
set(BUILD_SHARED_LIBS OFF CACHE BOOL "Build shared libraries")
set(CURL_STATICLIB ON CACHE BOOL "Build CURL as a static lib")
set(BUILD_CURL_EXE OFF CACHE BOOL "Do not build CURL executable")
set(BUILD_SHARED_LIBS OFF CACHE BOOL "Build shared libraries")
set(BUILD_TESTING OFF CACHE BOOL "Do not build tests")

# Add CURL as a subdirectory
add_subdirectory(vendor/curl-8.5.0)

if(WIN32)
    add_definitions("-DCURL_STATICLIB")
endif()


# add_dependencies(${TARGET_NAME} libcurl fandev)

file(GLOB_RECURSE WREN src/wren/*.c)
file(GLOB_RECURSE LIB_FILES  src/vm/*.cpp src/vm/*.c)
file(GLOB_RECURSE SRC_FILES src/main.cpp src/cli/*.cpp)

# Static Analyzer: https://gcc.gnu.org/onlinedocs/gcc-10.1.0/gcc/Static-Analyzer-Options.html
# Linker Options: https://gcc.gnu.org/onlinedocs/gcc/Link-Options.html



if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
    ########################
    # DEBUG              #
    ########################

    # Add back: fsanitize=leak
    set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG}  -fasynchronous-unwind-tables -ggdb3 -Wall  -fsanitize=leak -fsanitize=address -fsanitize=undefined -fno-omit-frame-pointer")
    set(CMAKE_LINKER_FLAGS_DEBUG "${CMAKE_LINKER_FLAGS_DEBUG} -fsanitize=leak -fsanitize=address -fsanitize=undefined -no-pie -Wall -fno-omit-frame-pointer")

    ########################
    # RELEASE              #
    ########################
    set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -fPIE -D_FORTIFY_SOURCE=2 -fexceptions -Wall -O2 -flto -funroll-loops")
    set(CMAKE_EXE_LINKER_FLAGS_RELEASE "${CMAKE_LINKER_FLAGS_RELEASE} -fPIE  -s")
    # -static -static-libgcc -static-libstdc++
elseif(MSVC)
    set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} /Ox /GL")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /LTCG")
endif()

# Static Lib
add_library(fan-dev STATIC ${WREN} ${LIB_FILES} ${CURL_LIBRARIES})



# Executable
add_executable(fan ${SRC_FILES})


# Final Build
target_link_libraries(fan-dev PRIVATE ${CMAKE_CXX_STANDARD_LIBRARIES} pthread libcurl) #leveldb
target_link_libraries(fan PRIVATE ${CMAKE_CXX_STANDARD_LIBRARIES} fan-dev)

