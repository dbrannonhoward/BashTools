#!/bin/bash
dir="$1"
ext="$2"
if [ $# -eq 0 ]
then
	echo "no args, try : cmd directory extension"
elif [ $# -eq 2 ]
then
	for FOUND in `find $dir -name \*.$ext`; do
		echo $FOUND
	done
else
	echo "bad args, try : cmd directory extension"
fi
