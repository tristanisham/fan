# Void

Void is a multi-threaded webserver written from scratch. From scratch meaning
using only the C++ 20 standard library. It's not intended for production use,
but I'll probably put it there anyway.

## Build

- Requires g++ > 10

```sh
mkdir build; cd build
cmake -DCMAKE_BUILD_TYPE=Release ..
make -j8
```

https://gavinchou.github.io/experience/summary/syntax/gcc-address-sanitizer/

## Lang

Void is a http webserver and a programming language built for the web. It takes
inspiration (in purpose, not design) from PHP, JavaScript, and Go.
