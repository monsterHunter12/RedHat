#!/bin/bash
#program to print the length of the largest line in a file using awk
read -p "Enter the name of the file : " filename

if [ ! -f $filename ]
then
	#echo
	echo "File not found"
else
	awk '{ if (length($0) > max) max= length($0) } END {print max}' $filename
fi
