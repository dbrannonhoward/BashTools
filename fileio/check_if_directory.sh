#!/bin/bash
if [ $# -eq 1 ]
then
	if [ -d "$1" ]
	then
		echo arg is a directory
	else
		echo arg is not a directory
	fi
else
	echo bad args, this script only accepts one arg
fi
