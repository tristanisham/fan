# Contributing

To develop for void you will need a C/C++ compiler that supports C++20. Development should target the earliest available version of their preferred compiler that supports the language.

- GCC 10
- Clang 10
- Zig C++

The testing and targeting environment for Void should remain the latest stable Debian branch, and be able to compile completly with the tools installed via `apt install build-essental`. 

Void should also avoid dynamically linking to anything other than the C++ standard library. Third-party modules must have a permissive, non-viral FOSS license. This project prefers the MIT license.