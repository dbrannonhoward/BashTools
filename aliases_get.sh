#!/bin/bash
path_home="$(getent passwd $USER | awk -F ':' '{print $6}')/"
cwd="./"
bash=$path_home".bash_aliases"
if [ -f $bash ];then
	echo $bash" exists on local, concat to repo"
	cat $bash >> $cwd"bash_aliases"
else
	echo "copying project alias to "$bash
fi

