#!/bin/bash
if [ -f "$1" ]; then
	echo -e "$1"" is a file, reading.."
	for LINE in `cat $1`; do
		sudo apt install $LINE
	done
else
	echo -e argument is not a file, aborting
fi
