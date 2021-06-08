#!/bin/bash
#TODO move regex & other strings to vars
args="\n\tno_repo\n\t"
if [ $# -eq 0 ]
then
	egrep -v '^#|^ *$' /etc/apt/sources.list /etc/apt/sources.list.d/*
elif [ "$1" == "no_repo" ]
then
	for APT in `find /etc/apt -name \*.list`;
	do
		grep -o "^deb http://ppa.launchpad.net/[a-z0-9\-]\+/[a-z0-9\-]\+" $APT | while read ENTRY ; do
			USER=`echo $ENTRY | cut -d/ -f4`
			PPA=`echo $ENTRY | cut -d/ -f5`
			echo sudo apt-add-repository ppa:$USER/$PPA
		done
	done
else
	echo -e "bad args, try : "$args
fi
