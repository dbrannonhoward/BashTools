input_arg=$1
if [ $# -eq 0 ]
then
	echo "no args provided"
elif [ -z "$1" ]
then
	echo "empty string used as arg"
else
	echo $input_arg
fi
