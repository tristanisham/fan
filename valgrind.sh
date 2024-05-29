#!/usr/bin/env bash

# Check for the existence of the fan executable in different directories
if [[ -x "./build/debug/fan" ]]; then
    FAN_EXEC="./build/debug/fan"
#elif [[ -x "./build/release/fan" ]]; then
#    FAN_EXEC="./build/release/fan"
else
    FAN_EXEC="./build/fan"
fi

export LD_PRELOAD="/usr/lib/x86_64-linux-gnu/libasan.so.6:$LD_PRELOAD"

FAN_LIB=./lang valgrind --leak-check=full \
         --show-leak-kinds=all \
         --track-origins=yes \
         --verbose \
         --leak-check=full \
         --log-file=build/valgrind-out.txt \
         $FAN_EXEC $@
