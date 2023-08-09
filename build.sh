#!/bin/bash
cmake -B build/ -S . -DCMAKE_BUILD_TYPE=Release
cd build/
make -j`nproc`
