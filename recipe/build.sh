#!/usr/bin/bash
cd DevIL
mkdir -p build
cd build

# Configure
cmake .. -LAH -GNinja                                \
  ${CMAKE_ARGS}                                      \
  -DBUILD_SHARED_LIBS:bool=on                        \
  -DBUILD_STATIC_LIBS:bool=off                       \
  -DCMAKE_BUILD_TYPE=Release                         \
  -DCMAKE_INSTALL_PREFIX:path="$PREFIX"

# Build and install
cmake --build .
cmake --install .


