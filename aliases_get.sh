#!/bin/bash
home="~/"
bash=$home".bash_aliases"
if [ -f $bash ]
then
	echo $bash" exists, cloning to repo"
	# cat $bash >> bash_aliases.sh
else
	echo "copying project alias to "$bash
fi

