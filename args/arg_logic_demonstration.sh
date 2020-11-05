arg=$1
if [ $# -eq 0 ]
then
	echo "no args provided"
elif [ -z "$1" ]
then
	echo "empty string used as arg"
elif [ $arg == "match" ]
then
	echo -e "exact argument detected :"
	echo -e "\t$arg"
else
	echo -e "unhandled argument detected :"
	echo -e "\t$arg"
fi
