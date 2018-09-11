#!/bin/bash

## This demo shows the usage of $* and $@ to get the full list of script arguments.

echo "There are $# arguments."
echo
echo "Use \$* to get argument list: $*"
echo
echo "Use \$@ to get argument list: $@"
echo
echo "Use \"\$*\" in a for loop:"
i=1
for v in "$*"; do
	echo $((i++)) "$v"
done
echo
echo "Use \"\$@\" in a for loop:"
i=1
for v in "$@"; do
	echo $((i++)) "$v"
done
echo

echo 
echo "Use \$* in a for loop:"
i=1
for v in $*; do
	echo $((i++)) "$v"
done
echo

echo
echo "Use \$@ in a for loop:"
i=1
for v in $@; do
	echo $((i++)) "$v"
done
echo

echo
echo "Use for x to loop through arguments:"
i=1
for v; do
	echo $((i++)) "$v"
done
echo

