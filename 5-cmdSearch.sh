#!/bin/bash

read -p "Enter the cmd to search on PATH: " cmd

dirs=$(echo $PATH | tr ":" " ")  ## could a directory name contain a whitespace?

for d in $dirs; do
    if [[ -e $d/$cmd ]]; then
        echo "$d/$cmd"
        exit 0
    fi
done

echo "NOT found $cmd"
exit 1


