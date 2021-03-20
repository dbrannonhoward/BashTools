#!/bin/bash
# TODO every mount operation creates a folder at mount point? look into this
user=$USER
disk=$1
mount_point=''
if [ $# -eq 1 ] 
then
	mount_point='/media/'$user$disk
else
	echo 'bad args'
fi
echo $mount_point

