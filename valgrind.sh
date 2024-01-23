#!/usr/bin/env bash

FAN_LIB=./lang valgrind --leak-check=full \
         --show-leak-kinds=all \
         --track-origins=yes \
         --verbose \
         --leak-check=full \
         --log-file=build/valgrind-out.txt \
         ./build/fan $@
