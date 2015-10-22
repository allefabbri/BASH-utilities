#!/bin/bash
infn_mac="20:6A:8A:DE:71:6A"
echo "echo "Old MAC address""           | sudo bash
echo "ifconfig -a | grep 'eth0.*HWaddr'" | sudo bash
echo "ifconfig eth0 down"   | sudo bash
echo "ifconfig eth0 hw ether $infn_mac" | sudo bash
echo "sudo ifconfig eth0 up"            | sudo bash
echo "echo "New MAC address"" | sudo bash
echo "ifconfig -a | grep 'eth0.*HWaddr'" | sudo bash
