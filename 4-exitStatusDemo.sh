#!/bin/bash

read -p "Enter the user name to query: " username

PASSWDFILE=/etc/passwd

grep "^$username" $PASSWDFILE > /dev/null

status=$?
echo $status

if [[ $status -eq 0 ]]; then
    echo "$username found in $PASSWDFILE"
else
   echo "$username not found in $PASSWDFILE"
fi

echo "Another improved version"

if grep "^$username" $PASSWDFILE > /dev/null; then
	echo "$username found in $PASSWDFILE"
else
	echo "$username NOT found in $PASSWDFILE"
fi


