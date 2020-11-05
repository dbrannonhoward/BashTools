if [ $# -eq 0 ]
then
	cat /etc/passwd
elif [ $1 == 'users' ]
then
	awk -F':' '{print $1}' /etc/passwd
elif [ $1 == 'count' ]
then
	getent passwd | wc -l
else
	echo -e "Arg not recognized, try :"
	echo -e "\tusers\n"
	echo -e "\tcount\n"
fi
