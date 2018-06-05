# Copyright 2015, Alessandro Fabbri
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

#!/bin/bash
usage(){
  echo \
"Usage:   $0 format timestamp

          format = [h|u]

          h = human readable timestamp YYYYMMDD-HHMMSS (UTC)
          u = unix timestamp (UTC)
"
  exit 0
}

if (( $# != 2 )); then
  usage
fi


case $1 in
  h )
  hr=$2
  ut=$(date -j -f "%Y%m%d-%H%M%S" $hr +"%s")
  ;;
  u )
  ut=$2
  hr=$(date -j -u -f "%s" $ut +"%Y%m%d-%H%M%S")
  ;;
esac

echo "UTC Unix timestamp : $ut"
echo "UTC Date time      : $hr"

