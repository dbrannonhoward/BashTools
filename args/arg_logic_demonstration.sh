input_arg=$1
if [ $# -eq 0 ]
then
	echo "no args provided"
elif [ -z "$1" ]
then
	echo "empty string used as arg"
elif [ $input_arg == "some_match" ]
then
	echo -e "exact argument detected :"
	echo -e "\t$input_arg"
else
	echo -e "unhandled argument detected :"
	echo -e "\t$input_arg"
fi
