#!/bin/bash
if [ -f "$1" ]; then
	while read -r LINE; do
		echo $LINE
	done < "$1"
else
	echo not a file, aborting..
fi
