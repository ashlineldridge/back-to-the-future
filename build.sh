#!/usr/bin/env bash

export CC=/usr/local/opt/llvm/bin/clang
export CXX=/usr/local/opt/llvm/bin/clang++

cmake -S . -B build
cmake --build build
