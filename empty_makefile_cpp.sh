#!/usr/bin/env bash

# Copyright 2018, Alessandro Fabbri
# for any question, please mail rommacc@yahoo.it

#************************************************************************
# This program is free software: you can redistribute it and/or modify  *
# it under the terms of the GNU General Public License as published by  *
# the Free Software Foundation, either version 3 of the License, or     *
# (at your option) any later version.                                   *
#                                                                       *
# This program is distributed in the hope that it will be useful,       *
# but WITHOUT ANY WARRANTY; without even the implied warranty of        *
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the         *
# GNU General Public License for more details.                          *
#                                                                       *
# You should have received a copy of the GNU General Public License     *
# along with this program.  If not, see <http://www.gnu.org/licenses/>. *
#***********************************************************************/

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
