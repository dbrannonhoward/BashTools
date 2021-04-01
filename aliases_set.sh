#!/bin/bash

path_home="$(getent passwd $USER | awk -F ':' '{print $6}')/"
rpo_aliases="./bash_aliases"

sys_aliases=$path_home".bash_aliases"

if [ -f $sys_aliases ];then
	echo "sys aliases already exists,"
	echo "preparing to cat append repo to sys"
	echo "press enter to confirm.."
	read user_input
	cat $rpo_aliases >> $sys_aliases
else
	echo "sys aliases does not exist,"
	echo "copying file"
	cp $rpo_aliases $sys_aliases
fi

