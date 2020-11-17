#!/bin/bash
if [ $# -ne 1 ]; then
	echo 'bad args, use only one'
else
	sudo usermod -aG sudo $1
fi
