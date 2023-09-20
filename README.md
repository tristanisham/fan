# Void

Void is a dynamically-typed programmign language based on
[Wren](https://wren.io). Void's aim is to be _statically compilable_, portable,
and come with batteries-included.

```sh
git clone --recurse-submodules https://github.com/tristanisham/void.git
```

Void currently supports, GCC, Clang, and targets *nix systems. Windows support
is a work in progross. MSVC is God's punishment for man's arrogance.

## Setup & Dependencies

Void requires some external dependencies. They're all pretty easy to install and
go in `./vendor`.

1. Google's LevelDB

```sh
$ cd vendor
$ git clone --recurse-submodules https://github.com/google/leveldb.git
```

2. Boost's Header-only libraries

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

## Environment Variables

To run this project, you will need to add the following environment variables to
your environment.

`VOID_LIB` points to the Void standard library. If you've installed Void with a
provided installer, this variable should be set for you. If this variable is not
set, VOID will still look for modules in the current working directory.

## Contributing

Contributions are always welcome!

See `contributing.md` for ways to get started.

Please adhere to this project's `code of conduct`.

### Project Structure

- `include`: All project header files
- `lib`: Void's standard library written in .vd
- `src`: CPP/C files
- `tests`: Standard Library tests
- `vendor`: third-party dependencies larger than a single header file. Namely,
  [Boost](https://boost.org).
- `./void.sh`: A little helper script to load dev environemnt variables for you.
  Use it like `./void.exe`.
