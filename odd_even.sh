#!/bin/bash
read -p "Enter a number : " n

if [ `expr $n % 2` == 0 ]
then
	echo "$n is even"
else
	echo "$n is odd"
fi

