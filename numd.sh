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

usage(){
  echo \
"Usage:   $0 [ibase] <arithmetic expression>

          ibase = h/o/d/b

          h = hexadecimal, base 16 (either lower or upper case for letteral digits)
          o = octal, base 8
          d = decimal, base 10
          b = binary, base 2
"
  exit 0
}

if (( $# != 2 )); then
  usage
fi

case $1 in
  h )
  hex=`echo "$2" | tr a-z A-Z`
  hex=`echo "obase=16; ibase=16; $hex" | bc`
  oct=`echo "obase=8;  ibase=16; $hex" | bc`
  dec=`echo "obase=10; ibase=16; $hex" | bc`
  bin=`echo "obase=2;  ibase=16; $hex" | bc`
    ;;
  o )
  oct=`echo "obase=8;  ibase=8; $2"   | bc`
  hex=`echo "obase=16; ibase=8; $oct" | bc`
  dec=`echo "obase=10; ibase=8; $oct" | bc`
  bin=`echo "obase=2;  ibase=8; $oct" | bc`
    ;;
  b )
  bin=`echo "obase=2;  ibase=2; $2"   | bc`
  hex=`echo "obase=16; ibase=2; $bin" | bc`
  oct=`echo "obase=8;  ibase=2; $bin" | bc`
  dec=`echo "obase=10; ibase=2; $bin" | bc`
    ;;
  d )
  dec=`echo "obase=10; ibase=10; $2"   | bc`
  hex=`echo "obase=16; ibase=10; $dec" | bc`
  oct=`echo "obase=8;  ibase=10; $dec" | bc`
  bin=`echo "obase=2;  ibase=10; $dec" | bc`
    ;;
  *)
  echo "Wrong INPUT base specifier"
  usage
    ;;
esac

echo "h=$hex o=$oct d=$dec b=$bin"
