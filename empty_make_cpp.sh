#!/bin/bash

name="test"
[[ "$1" != "" ]] && name="$1"

echo -e "#include <iostream>

using namespace std;

int main()
{
	cout << \"$name\" << endl;

	return 0;
}
" > $name.cpp

echo -e "all : $name.cpp
	\$(CXX) -std=c++11 -o $name $name.cpp
	./$name
" > makefile
