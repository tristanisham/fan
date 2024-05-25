#!/usr/bin/env bash


# Check for the existence of the fan executable in different directories
if [[ -x "./build/debug/fan" ]]; then
    FAN_EXEC="./build/debug/fan"
elif [[ -x "./build/release/fan" ]]; then
    FAN_EXEC="./build/release/fan"
else
    FAN_EXEC="./build/fan"
fi

# Execute the fan command with the given arguments
FAN_LIB=./lang $FAN_EXEC "$@"