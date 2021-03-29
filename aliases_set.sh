#!/bin/bash
home="$(getent passwd $USER | awk -F ':' '{print $6}')/"
bash=$home".bash_aliases"
if [ -f $bash ];then
	echo $bash" already exists"
else
	echo "copying project alias to "$bash
	#cp ./bash_aliases ~/.bash_aliases
fi

