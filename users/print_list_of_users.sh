#!/bin/bash
args="\targs\n\tcount\n\tusers"
if [ $# -eq 0 ]
then
	cat /etc/passwd
elif [ $1 == 'users' ]
then
	awk -F':' '{print $1}' /etc/passwd
elif [ $1 == 'count' ]
then
	getent passwd | wc -l
else
	echo -e "arg not recognized, try :"
	echo -e $args
fi
