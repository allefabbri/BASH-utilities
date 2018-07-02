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

#!/bin/bash

LINKDIR=$HOME/bin

echo "Installing in : $LINKDIR"
mkdir -p $LINKDIR

declare -a scripts=(numd.sh timeconverter.sh empty_makefile_cpp.sh empty_cmake_cpp.sh explorer)
declare -a apps=(nd tico empty_mcpp empty_ccpp explorer)

for i in ${!scripts[*]}
do
  script=${scripts[$i]}
  app=${apps[$i]}
  echo "Installing : $script (as $app)"
  [ -f $LINKDIR/$app ] && echo "Link already exists..."
  if ! [ -f $LINKDIR/$app ]
  then
    echo "Creating link..."
    ln -s $WORKSPACE/BASH-utilities/$script $LINKDIR/$app
  fi
done

if ! [[ $PATH == *"$LINKDIR"* ]]
then
  echo "Updating path..."
  echo -e "\n#bin link path\nexport PATH=\$PATH:$LINKDIR\n" >> $HOME/.bashrc
  echo "Reload your environment 'souce ~/.bashrc'!"
else
  echo "PATH is up-to-date"
fi
