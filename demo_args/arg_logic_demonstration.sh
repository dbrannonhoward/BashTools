#!/bin/bash
if [ $# -eq 0 ]
then
	echo "no args provided"
elif [ -z "$1" ]
then
	echo "empty string used as arg"
elif [ $arg == "match" ]
then
	echo "exact argument detected :"
	echo -e "\t$1"
else
	echo "unhandled argument detected :"
	echo -e "\t$1"
fi
