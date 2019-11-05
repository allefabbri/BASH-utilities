#! /usr/bin/env bash
# from somewhere on stack

# USAGE
# ascii2bin "hello" -> 1101000 1100101 1101100 1101100 1101111
# ascii2bin "hello" | sed 's/.\{4\}/& /g' -> 11010001100101110110011011001101111

chrbin() {
  echo $(printf \\$(echo "ibase=2; obase=8; $1" | bc))
}

ordbin() {
  a=$(printf '%d' "'$1")
  echo "obase=2; $a" | bc
}

ascii2bin() {
  echo -n $* | while IFS= read -r -n1 char; do
    ordbin $char | tr -d '\n'
    echo -n " "
  done
  echo ""
}

bin2ascii() {
  for bin in $*; do
    chrbin $bin | tr -d '\n'
  done
  echo ""
}

export -f chrbin
export -f ordbin
export -f ascii2bin
export -f bin2ascii
