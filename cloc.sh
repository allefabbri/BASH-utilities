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

echo "Folder                         : $(pwd)"
declare -a files=($(find . -type f -name "*.h" -o -name "*.hpp" -o -name "*.c" -o -name "*.cpp"))
echo "Source files (.h .hpp .c .cpp) : ${#files[@]}"

cnt=0
for f in ${files[@]}
do
	c=$(cat $f | wc -l)
	((cnt=$cnt+$c))
done
echo "Line of code                   : $cnt"
