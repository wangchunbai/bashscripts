#!/bin/bash

num=$#

if [[ num > 2 || num < 1 ]]; then
  echo "The correct way inovking this cmd is: $0 [from] to"
  exit 1
elif [[ num == 1 ]]; then
	to="$1"
else
	from="$1"
	to="$2"
fi
