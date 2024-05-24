<p align="center">
<!-- ![fan-logo](https://github.com/tristanisham/fan/assets/23124818/09902251-a57d-4cb5-a79b-2fc7d425cb8c) -->
  <image src="https://github.com/tristanisham/fan/assets/23124818/09902251-a57d-4cb5-a79b-2fc7d425cb8c" alt="Project logo">
</p>

# Fan

Fan is a dynamically-typed programming language based on
[Wren](https://wren.io). Fan's aim is to be _statically compilable_, portable,
and come with batteries-included.

```sh
git clone --recurse-submodules https://github.com/tristanisham/fan.git
```

Fan currently supports, GCC, Clang, and targets *nix systems. Windows support
is a work in progross. MSVC is God's punishment for man's arrogance.

## Setup & Dependencies

Fan requires some external dependencies. They're all pretty easy to install and
go in `./vendor`.

### 1. Boost's Header-only libraries

- Go to [Boost's version history](https://www.boost.org/users/history/) and
  download and extract version **1.83.0**

```sh
# Download Boost in ./vendor
$ tar --bzip2 -xf boost_1_83_0.tar.bz2
$ rm boost_1_83_0.tar.bz2
```

The master `CMakeLists.txt` should already be targeting this path.

```
include_directories(vendor/boost_1_83_0)
```

### 2. Curl

If you're on Windows or MacOS, CURL should be installed with your system. If
you're on Linux, run
[the appropriate command](https://everything.curl.dev/get/linux) to install CURL
for your distrobution.

## Environment Variables

To run this project, you will need to add the following environment variables to
your environment.

`FAN_LIB` points to the Fan standard library. If you've installed Fan with a
provided installer, this variable should be set for you. If this variable is not
set, Fan will still look for modules in the current working directory.

## Contributing

Contributions are always welcome!

See `contributing.md` for ways to get started.

Please adhere to this project's `code of conduct`.

### Project Structure

- `include`: All project header files
- `lib`: Fan's standard library written in .fan
- `src`: CPP/C files
- `tests`: Standard Library tests
- `vendor`: third-party dependencies larger than a single header file. Namely,
  [Boost](https://boost.org).
- `./fan.sh`: A little helper script to load dev environemnt variables for you.
  Use it like `./fan.exe`.
