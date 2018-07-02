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

new_mac="20:6A:8A:DE:71:6A"
echo "echo "Old MAC address""            | sudo bash
echo "ifconfig -a | grep 'eth0.*HWaddr'" | sudo bash
echo "ifconfig eth0 down"                | sudo bash
echo "ifconfig eth0 hw ether $new_mac"   | sudo bash
echo "sudo ifconfig eth0 up"             | sudo bash
echo "echo "New MAC address""            | sudo bash
echo "ifconfig -a | grep 'eth0.*HWaddr'" | sudo bash
