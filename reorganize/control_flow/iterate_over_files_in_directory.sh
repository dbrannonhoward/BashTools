#!/bin/bash
path="$1"
all="/*"
for FILE in $path$all
do
	echo $FILE
done
