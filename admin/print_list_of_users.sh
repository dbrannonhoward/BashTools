if [ $# -eq 0 ]
then
	cat /etc/passwd
elif [ $1 == 'usernames' ]
then
	awk -F':' '{print $1}' /etc/passwd
else
	echo -e "Arg not recognized, try :"
	echo -e "\tusernames\n"
fi
