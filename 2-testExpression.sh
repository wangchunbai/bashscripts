#!/bin/bash

##This demo shows the usage of IF test expression

if [[ -f ~/contactlist ]] 
then
  for file; do
    grep -i "$file" ~/contactlist
  done
else
  echo "Can't find contactlist file"
fi
