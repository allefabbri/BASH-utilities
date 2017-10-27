#!/bin/bash

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
