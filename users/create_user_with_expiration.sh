#!/bin/bash
# TODO fixme
echo "this is broken, couldn't get regex to match..?"
exit 1
user=$1
year=$2
month=$3
day=$4
exp=$year'-'$month'-'$day
$regex="^[0-9]{4}-[0-9]{2}-[0-9]{2}$"
echo $exp
if [ $# -ne 4 ]; then
	echo 'bad args, use format : user year month day'
else
	if [ $exp =~ $regex ]; then
		sudo useradd -e $exp $user
	else
		echo 'bad date, zero pad month and day'
	fi
fi
