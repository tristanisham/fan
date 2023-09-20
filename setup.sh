#!/usr/bin/env bash

mkdir -p vendor
cd vendor

git clone --recurse-submodules https://github.com/google/leveldb.git

BOOST_DOWNLOAD="boost_1_83_0.tar.bz2"
wget -q --show-progress --max-redirect 5 -O https://boostorg.jfrog.io/artifactory/main/release/1.83.0/source/${BOOST_DOWNLOAD}
tar --bzip2 -xf ${BOOST_DOWNLOAD}

