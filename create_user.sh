#!/bin/bash
#check if the current user is root
if [ $(id -u) -eq 0 ];then
	read -p "Enter Username : " username
	read -s -p "Enter Password : " password
	#egrep is grep with regex
	egrep "^$username" /etc/passwd > /dev/null
	#check if egrep has usr or not
	#$? is used to get exit code of last statement that ran to be used in if else 
	if [ $? -eq 0 ];then
		echo "$username exists!"
		exit 1
	else
		#perl inbuilt function for encryption
		pass=$(perl -e 'print crypt($ARGV[0], "password")' $password)
		#directly run command to add a user
		useradd -m -p "$pass" "$username"
		#ternanry if else statement
		[ $? -eq 0 ] && echo "User has been added to system " || "Failed to add a user "
	fi
else
	echo "Only root user can add a new user."
	exit 2
fi
