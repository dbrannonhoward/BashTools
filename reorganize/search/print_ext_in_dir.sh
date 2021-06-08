#!/bin/bash
ext=$1
dir=$2
#find $dir -name \*.$ext
if [ $# -eq 2 ]
then
	for FILE in `find $dir -name \*.$ext`; do
		echo $FILE
	done
else
	echo "bad args, try : cmd ext dir"
fi
