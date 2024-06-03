FROM alpine:latest
LABEL authors="tristan"

# Install necessary packages
RUN apk update && \
    apk add --no-cache g++ boost-dev curl-dev cmake make

# Verify the installations
RUN g++ --version && \
    ls /usr/include/boost

# Set the working directory
WORKDIR /app

# Add your application source code to the container
COPY . /app

# Set the build type (default to Release, can be overridden at build time)
ARG BUILD_TYPE=Release

# Create a build directory and run cmake and make
RUN mkdir -p build && cd build && \
    cmake -DCMAKE_BUILD_TYPE=${BUILD_TYPE} .. && \
    cmake --build . && \
    cd ..

# Define the command to run your application
ENV FAN_LIB "./lang"
CMD ["./build/fan"]