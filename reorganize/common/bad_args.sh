#!/bin/bash
args=$1
bad_args () {
	if [ $# -ne 1 ]
	then
		echo "bad_args takes exactly ONE arg"
	else
		echo bad args, try :
		echo -e "$args"
	fi
}
bad_args $1
