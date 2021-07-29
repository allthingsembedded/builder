#!/bin/bash -xe

pushd /opt

git clone https://github.com/include-what-you-use/include-what-you-use.git
pushd include-what-you-use
git checkout clang_12

mkdir build
pushd build
cmake -DCMAKE_PREFIX_PATH=/usr/lib/llvm-12 ..
cmake --build .
