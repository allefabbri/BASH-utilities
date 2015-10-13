#!/bin/bash

usage(){
	echo \
"Usage:   $0 [ibase] [obase] number

          ibase,obase = h/o/d/b

          h = hexadecimal, base 16 (either lower or upper case for letteral digits)
          o = octal, base 8
          d = decimal, base 10
          b = binary, base 2
"
	exit 0
}

if (( $# != 3 )); then
	usage
fi

case $1 in
	h )
	ibase=16
		;;
	o )
	ibase=8
		;;
	b )
	ibase=2
		;;
	d ) 
	ibase=10
		;;
	*)
	echo "Wrong INPUT base specifier"
	exit 1
		;;
esac

case $2 in
	h )
	obase=16
		;;
	o )
	obase=8
		;;
	b )
	obase=2
		;;
	d ) 
	obase=10
		;;
	*)
	echo "Wrong OUTPUT base specifier"
	exit 2
		;;
esac

number=`echo "$3" | tr a-z A-Z` # converting to upper case, if any
echo "obase=$obase; ibase=$ibase; $number" | bc