#!/usr/bin/env bash

mkdir -p vendor
cd vendor

git clone --recurse-submodules https://github.com/google/leveldb.git

BOOST_DOWNLOAD="boost_1_93_0.tar.bz2"
wget -q --show-progress --max-redirect 5 -O ${BOOST_DOWNLOAD}
tar --bzip2 -xf ${BOOST_DOWNLOAD}

