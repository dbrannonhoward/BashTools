input_arg=$1
if [ $# -ne 1 ]
then
	echo "Provide one argument"
else
	echo "Creating user account with username : $input_arg"
	sudo adduser $input_arg
fi
