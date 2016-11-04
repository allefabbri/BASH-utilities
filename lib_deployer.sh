#!/bin/bash

# Script that copies a single file or the content of a directory (no recursion)
# into a set of hardcoded project directories
# Specialize it for each repo you might have
#

# Registered projects
#BASE_DIR="$HOME/Codice/"
BASE_DIR="./"
proj_folders=( 
$BASE_DIR"Projettone/src"
$BASE_DIR"Progettissimo" )

usage(){
	echo "Usage : $(basename $0) [ -f filename | -d directory ] [-y]"
	echo "      -f path of file to copy"
	echo "      -d path of directory to copy"
}

# Command line stuff
[ $# -lt 2 ] && usage && exit 22
case $1 in
	"-f" )
		filen="$2"
		! [ -f $filen ] && echo "No file $filen" && exit 44
		dirn=""
		;;
	"-d" )
		filen=""
		dirn="$2"
		! [ -d $dirn ] && echo "No directory $dirn" && exit 55
		;;
	*)
		usage
		exit 33
		;;		
esac

# Updating selected lib file(s)
if [[ $dirn == "" ]]; then
	files=( $filen )
elif [[ $filen == "" ]]; then
	files=$(find $dirn -name "*" -type f)
fi

for folder in ${proj_folders[@]}; do 
	echo "Project folder : $folder"
done
for folder in ${proj_folders[@]}; do
	echo "Project folder : $folder"
	if [ -d $folder ]; then
		for filen in $files; do
			echo    "     Copying : $(realpath $filen)"
			echo -n "     To      : $(realpath $folder)//$filen"
			[[ $3 != "-y" ]] && read -rep $' (Enter to continue)'
				if [[ -f $folder/"$(basename $filen)" && $folder/"$(basename $filen)" -nt $filen && $3 != "-y" ]]; then
				read -rep $'**** Lib file is older than project. Overwrite? (Enter to continue)'
			else
				echo
			fi
			cp $filen $folder
		done
	else
		echo "No proj folder $folder found" 
	fi
done
