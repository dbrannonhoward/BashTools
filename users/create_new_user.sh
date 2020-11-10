#!/bin/bash
if [ $# -ne 1 ]
then
	echo "provide one argument"
else
	echo "creating user account with username : $1"
	sudo adduser $1
fi
