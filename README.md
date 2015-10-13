# BASH-utilities
This repo contains two very simple but handy *BASH* scripts to deal with numbers base conversion in the computer world.

#### Installation
Just copy ``numc.sh`` and ``numd.sh`` to your script folder and create a hard link in ``/usr/bin/`` (requires root's privileges).

#### Number Converter
**Usage**
```
numc.sh [ib] [ob] number
```
where
```
ib = h/o/d/b = "Input Base"
ob = h/o/d/b = "Output Base"
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
# numc.sh h b ff
11111111
```

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
```
