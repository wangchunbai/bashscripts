#!/bin/bash

echo 'Use -a and -o to logically combine several test conditions'

echo '-o stands for logical OR: expression1 -o expression2. The second expression is executed if and only if the first is false or fails'

echo '-a stands for logical AND: expre -a expre. The second is executd only if the first succeeds'

echo 'Precendence of -a and -o: -a get precendence over -o'

if [ -z "false" -a -z "$(echo I am got executed)" ]; then
	echo if part gets executed
else
	echo else part gets executed
fi

if [ -n "true" -o -e /does/not/exist -a -e /does/not/exist ]; then
	echo true  ## here
else 
	echo false
fi

if [ -n "true" ] || [ -e /does/not/exist ] && [ -e /does/not/exist ]; then
	echo true
else
	echo false  ## here
fi

echo 'With && and ||, Use {} to group commands'

if [ -n "true" ] || { [ -e /does/not/exist ] && [ -e /does/not/exist ]; }; then
	echo true  ## here
else
	echo false
fi

echo 'With -a and -o, Use \( and \) to group commands, or use '' to escape ()'

if [ \( -n "true" -o -e /does/not/exist \) -a -e /does/not/exist ]; then
	echo true
else 
	echo false  ## here
fi

echo 'Two ways to use ! to negate a test command'
echo '1: if ! [ exp ]'
echo '2: if [ ! exp ]'

if ! [ -d /tmp ]; then
	echo '/tmp is not a directory'
else
	echo '/tmp is a directory'
fi

if [ ! -d /tmp ]; then
	echo '/tmp is not a directory'
else 
	echo '/tmp is a directory'
fi

