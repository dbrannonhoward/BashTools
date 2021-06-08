#!/bin/bash
if [ $# -ne 1 ]; then
	echo 'bad args, use only one arg'
else
	sudo deluser --remove-home $1
fi
