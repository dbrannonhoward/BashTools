#!/bin/bash
#TODO could AND the conditions
#TODO grep isn't working how i expected..
dir=$1
ss=$2
if [ $# -eq 2 ]; then
	if [ -d "$dir" ]; then
		for FILE in $dir/*; do
			if [ -d $FILE ]; then
				:
			else
				cat $FILE | grep $ss
			fi
		done
	fi
else
	echo bad args, try : cmd directory search_string
fi
