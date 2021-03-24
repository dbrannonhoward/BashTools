#!/bin/bash
home='~/'
bash=$home'.bash_aliases'
if [ -f $bash ]
then
	echo $bash' already exists'
else
	echo 'copying project alias to '$bash
	#cp ./bash_aliases ~/.bash_aliases
fi
