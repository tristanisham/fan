# Contributing

## Tooling
To develop for void you will need a C/C++ compiler that supports C++20. Development should target the earliest available version of their preferred compiler that supports the language.

- GCC 10
- Clang 10
- Zig C++

The testing and targeting environment for Void should remain the latest stable Debian branch, and be able to compile completly with the tools installed via `apt install build-essental`. 

## License & Dependencies

Void should also avoid dynamically linking to anything other than the C++ standard library. Third-party modules must have a permissive, non-viral FOSS license. This project prefers the MIT license.

## Code Comments

If you're looking to contribute new bindings to the standard library, please declare your function in `include/lib.hpp` and define your function in `src/vm/std/<module_name>.cpp`. Make sure you've put the appropriate [Wren](https://wren.io) bindings in `lib/<module_name>.wren`.

New binding function names must start with `vm_`. This signifies to everyone that your function is a direct binding. Binded functions follow snake_case syntax.

Your function should also have a doc comment explaining where it binds and what it does. 