#!/bin/bash
# TODO match condition is too easily met, matches on portion of username
if [ $# -ne 1 ]; then
	echo 'bad args, try entering a single username'
else 	
	getent passwd | grep -q $1 && echo "user $1 found" || echo "user $1 not found"
fi
