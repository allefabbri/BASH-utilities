# BASH-utilities
Some *BASH* scripts.

#### Installation
Just copy the selected script to your script folder and create a link in ``/usr/bin/`` (requires root's privileges).

## Number Displayer
Tool to deal with numbers base conversion and arithmetic (requires bc).

**Usage**
```
numd.sh [ib] <arithmetic expression>
```
where
```
ib = h/o/d/b = "Input Base"
```
and
```
h = hexadecimal, base 16 (either lower or upper case for letteral digits)
o = octal, base 8
d = decimal, base 10
b = binary, base 2
```
**Sample Output**
```
# numd.sh h 1ff
h=1FF o=777 d=511 b=111111111
# numd.sh h 1+f
h=10 o=20 d=16 b=10000
# numd.sh b '1+10* 100'
h=1FF o=777 d=511 b=111111111
```

## MAC address changer
Quick way of changing, only for the current session, the MAC address of the ethernet card (requires ``root`` privileges). The new address is hardcorded inside the script so change it according to your needs.

**Usage and Sample Output**
```
# mac_changer.sh
[sudo] password for user:
Old MAC address
eth0      Link encap:Ethernet  HWaddr XX:XX:XX:XX:XX:XX
New MAC address
eth0      Link encap:Ethernet  HWaddr YY:YY:YY:YY:YY:YY
```

## Make/C++ blank project generator
A simple generator that creates a blank C++ main file and the corresponding makefile.

## Library deployer
This tool deploys a user-defined file or folder content into a number of hardcoded directories. The purpose is to simplify the proliferation of copies of the same lib files. Use with caution since it can overwrite importante changes, especially if used with the `-y` flag.

## Count Line Of Code
Count the line number of all the .c .cpp .h .hpp files starting a recursive search from the folder the script is run.
