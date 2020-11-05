args="\tnames\n\t"
temp=deleteme #TODO
if [ $# -eq 0 ]
then
	apt list --installed
elif [ $1 == "names" ]
then
	#TODO improve this by not writing to disk
	apt list --installed > $temp
	awk -F'/' '{ print $1 }' ./$temp
	rm ./$temp
else
	echo "argument not recognized, try : "
	echo -e $args
fi
