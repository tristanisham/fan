cmake_minimum_required(VERSION 3.16)
project(fan)
option(BUILD_SHARED_LIBS FALSE)

set(CMAKE_CXX_CLANG_FORMAT "clang-format -style=clang-format.json -fallback-style=Google")
set(CMAKE_CXX_STANDARD 20)

set(CMAKE_EXPORT_COMPILE_COMMANDS 1)

include_directories("include/")
include_directories("vendor/")

# CMark
link_directories("vendor/cmark")

find_package(CURL REQUIRED)

file(GLOB_RECURSE WREN src/wren/*.c)
file(GLOB_RECURSE LIB_FILES  src/vm/*.cpp src/vm/*.c)
file(GLOB_RECURSE SRC_FILES src/main.cpp src/cli/*.cpp)

# Static Analyzer: https://gcc.gnu.org/onlinedocs/gcc-10.1.0/gcc/Static-Analyzer-Options.html
# Linker Options: https://gcc.gnu.org/onlinedocs/gcc/Link-Options.html



if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
    ########################
    # DEBUG              #
    ########################

    # add back: -fsanitize=address, -no-pie (cmp)
    set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -fsanitize=address -no-pie -fasynchronous-unwind-tables -g -Wall -fsanitize=leak -fsanitize=undefined -fno-omit-frame-pointer")
    set(CMAKE_LINKER_FLAGS_DEBUG "${CMAKE_LINKER_FLAGS_DEBUG} -fsanitize=address -g -fsanitize=leak -fasynchronous-unwind-tables -fsanitize=undefined -Wall -fno-omit-frame-pointer")

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

# If the package has been found, compile definitions, include directories, and link libraries are added
if(NOT CURL_FOUND)
    message(FATAL_ERROR "CURL not found! Please install libcurl.")
endif()


include_directories(${CURL_INCLUDE_DIRS})
# Assuming your target is named 'your_target'. Replace 'your_target' with the actual target name
add_library(fan-dev STATIC ${WREN} ${LIB_FILES})

# Executable
add_executable(fan ${SRC_FILES})

# Final Build
target_link_libraries(fan-dev PRIVATE ${CMAKE_CXX_STANDARD_LIBRARIES} pthread ${CURL_LIBRARIES} cmark) #leveldb
target_link_libraries(fan PRIVATE ${CMAKE_CXX_STANDARD_LIBRARIES} fan-dev)
