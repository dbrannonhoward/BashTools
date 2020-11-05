input_arg=$1
if [ $# -ne 1 ]
then
	echo "provide one argument"
else
	echo "creating user account with username : $input_arg"
	sudo adduser $input_arg
fi
