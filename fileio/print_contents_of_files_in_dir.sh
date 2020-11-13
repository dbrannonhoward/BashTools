#!/bin/bash
#TODO could AND the conditions
dir=$1
if [ $# -eq 1 ]; then
	if [ -d "$dir" ]; then
		for FILE in $dir/*; do
			if [ -d $FILE ]; then
				:
			else
				cat $FILE
			fi
		done
	fi
else
	echo bad args, arg must be single directory
fi
