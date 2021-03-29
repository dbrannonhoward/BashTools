#!/bin/bash
home="$(getent passwd $USER | awk -F ':' '{print $6}')/"
bash=$home".bash_aliases"
if [ -f $bash ]
then
	echo $bash" exists, cloning to repo"
	# cat $bash >> bash_aliases.sh
else
	echo "copying project alias to "$bash
fi

