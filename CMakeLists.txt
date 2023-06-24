cmake_minimum_required(VERSION 3.16)

project(void)
set(CMAKE_CXX_CLANG_FORMAT "clang-format -style=clang-format.json -fallback-style=Google")

set(CMAKE_CXX_STANDARD 20)
file(GLOB_RECURSE SRC_FILES src/*.cpp)
add_executable(void ${SRC_FILES})



target_link_libraries(void PRIVATE ${CMAKE_CXX_STANDARD_LIBRARIES})
target_link_libraries(void PRIVATE pthread)


if(CMAKE_BUILD_TYPE STREQUAL "Debug")
    add_compile_options(-g -Wall -Wextra)
else()
    add_compile_options(-O3 -DNDEBUG)
endif()

install(TARGETS void RUNTIME DESTINATION bin)
