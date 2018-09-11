#!/bin/bash

echo "Demo 1: test if a file exists"
if [ -e ./test.sh ]; then
    echo "test.sh exists in $PWD directory"
else
    echo "test.sh doesn't exist in $PWD directory"
fi

echo "Demo 2: test if a string is empty"
read -p "Enter a string: " str
if [ -n "$str" ]; then
	echo "You entered: $str and it is not empty"
else
	echo "You entered: $str and it is empty"
fi

echo "Demo 3: test if two strings are equal"
read -p "Enter first string: " str1
read -p "Enter second string: " str2

if [ $str1 = $str2 ]; then
	echo "The two strings you entered: $str1 and $str2 are equal"
else
	echo "The two strings you entered: $str1 and $str2 are different"
fi

echo "Demo 4: test of arithmetic comparision"
read -p "Enter a number: " n1
read -p "Enter another number: " n2

if [ "${n1}" -ge "${n2}" ]; then
	echo "${n1} is greater or equal than ${n2}"
else 
	echo "${n1} is less than ${n2}"
fi


echo 'Demo 5: use && and || to control test conditions'
read -p "Enter a string: " str
read -p "Enter a file name: " fn

echo '&& Usage: if [ expression1 ] && [ expression2 ]; then { cmds }.'
echo 'Here, [ expression1 ] and [ expression2 ] two commands are combined using the && list control operator.'
echo 'With &&, if the first cmd succeeds (0 as exit status), then the second cmd get evaluated, and its value is evaluated by if cmd'

if true && echo "First expression succeeds"; then
	echo "true value"
else
	echo "false value"
fi

if false && echo "First expression succeeds"; then 
	echo "true value"
else
	echo "false value"
fi

echo '|| Usage: cmd1 || cmd2'
echo 'The second cmd get executed if and only if cmd1 fails (returns an exit status that is not 0)'
echo 'Then the second cmd exit status gets returned as exit status of the whole command'

if true || echo "Previous cmd fails"; then
	echo "true value"
else
	echo "false value"
fi

if false || echo "Previous cmd fails"; then
	echo "true value"
else
	echo "false value"
fi

echo "Test of $str is not empty and file $fn exists"
if [ -n "$str" ] && [ -e "$fn" ]; then
	echo "Bingo"
else
	echo "Oh, no"
fi

echo 'Demo 6: use -a and -o to control test conditions'
if [ -n "$str" -a -e "$fn" ]; then
	echo "Bingo"
else
	echo "No"
fi


