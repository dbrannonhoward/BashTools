if [ $# -eq 0 ]
then
	apt list --installed
	echo "use arg 'app' to print this list without descriptions"
elif [ $1 -eq "app" ]
then
	echo "app not implemented"
else
	echo "else not implemented"
fi
