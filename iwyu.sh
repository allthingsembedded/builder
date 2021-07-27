#!/bin/bash -xe

pushd /opt

git clone https://github.com/include-what-you-use/include-what-you-use.git
pushd include-what-you-use
git checkout clang_12
popd

mkdir iwyu
pushd iwyu
cmake -G "Unix Makefiles" -DCMAKE_PREFIX_PATH=/usr/lib/llvm-12 ../include-what-you-use
cmake --build .
popd

rm -rf include-what-you-use
