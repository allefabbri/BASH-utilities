#!/bin/bash

name="mytest"
[[ "$1" != "" ]] && name="$1"

echo -e "#include <iostream>

using namespace std;

int main()
{
  cout << \"$name\" << endl;

  return 0;
}
" > $name.cpp

echo -e "cmake_minimum_required(VERSION 3.10)
add_executable($name \${CMAKE_SOURCE_DIR}/$name.cpp)
" > CMakeLists.txt

echo -e "mkdir -p build
cd build
cmake ..
cmake --build .
cd ..
" > build.sh
chmod +x build.sh
