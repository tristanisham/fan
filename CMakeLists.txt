cmake_minimum_required(VERSION 3.16)
project(void)

set(CMAKE_CXX_CLANG_FORMAT "clang-format -style=clang-format.json -fallback-style=Google")
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_EXPORT_COMPILE_COMMANDS 1)

include_directories(include)


file(GLOB_RECURSE WREN src/wren/*.c)
file(GLOB_RECURSE LIB_FILES  src/vm/*.cpp src/vm/*.c)
file(GLOB_RECURSE SRC_FILES src/main.cpp src/cli/*.cpp)

set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -fsanitize=address -ggdb -fsanitize=leak -fno-omit-frame-pointer")
set(CMAKE_LINKER_FLAGS_DEBUG "${CMAKE_LINKER_FLAGS_DEBUG} -fsanitize=address -fsanitize=leak -ggdb -fno-omit-frame-pointer")


if(CMAKE_COMPILER_IS_GNUCXX OR CMAKE_CXX_COMPILER_ID MATCHES "Clang")
    set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} -O2 -flto -funroll-loops")
elseif(MSVC)
    set(CMAKE_CXX_FLAGS_RELEASE "${CMAKE_CXX_FLAGS_RELEASE} /Ox /GL /arch:AVX2")
    set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} /LTCG")
endif()

# Static Lib
add_library(voiddev STATIC ${WREN} ${LIB_FILES})



# Executable
add_executable(void ${SRC_FILES})

target_link_libraries(void PRIVATE ${CMAKE_CXX_STANDARD_LIBRARIES})

# Final Build
target_link_libraries(void voiddev)
