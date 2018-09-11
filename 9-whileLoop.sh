#!/bin/bash

go="yes"

while [[ "$go" == "yes" ]]
do
    echo "FORTUNE"
    read -p "Continue? yes or no: " go
done

i=0
while [[ $i -lt 20 ]]; do
	echo $i
	(( i++ ))
done

i=0
while [[ $i -lt 20 ]]; do
	echo $i
	let i++
done


