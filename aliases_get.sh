#!/bin/bash

path_home="$(getent passwd $USER | awk -F ':' '{print $6}')/"
fn_bash=$path_home".bash_aliases"

rpo_aliases="./bash_aliases"

if [ -f $fn_bash ];then
	echo $fn_bash" exists on local, concat to repo"
	cat $fn_bash >> $rpo_aliases
else
	echo "copying project alias to "$fn_bash
fi

