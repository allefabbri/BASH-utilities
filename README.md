# BASH-utilities
This repo contains a very simple but handy *BASH* scripts to deal with numbers base conversion and arithmetic in the computer world.

#### Installation
Just copy ``numd.sh`` to your script folder and create a hard link in ``/usr/bin/`` (requires root's privileges).

##### Number Displayer
**Usage**
```
numd.sh [ib] number
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
