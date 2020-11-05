args="-uvah --stats --progress"
if [ $# -eq 2 ]
then
	rsync $args $1 $2
else
	echo "bad args, try : "
	echo -e "\tcmd source destination"
fi
