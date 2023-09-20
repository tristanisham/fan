# Void

Void is a dynamically-typed programmign language based on
[Wren](https://wren.io). Void's aim is to be _statically compilable_, portable,
and come with batteries-included.

Void currently supports, GCC, Clang, and targets *nix systems. Windows support
is a work in progross. MSVC is God's punishment for man's arrogance.

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
