input_arg=$1
if [ $# -eq 0 ]
then
	echo "Please provide a username as an argument"
	echo "Exiting program without performing any action"
elif [ $# -gt 1 ]
then
	echo "Too many arguments"
	echo "Please provide a single username as an argument"
	echo "Exiting program without performing any action"
else
	echo "Creating user account with username"
	sudo adduser $input_arg
fi
