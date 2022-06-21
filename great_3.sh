#!/bin/bash

read -p "Enter 1st Number : " num1
read -p "Enter 2nd Number : " num2
read -p "Enter 3rd Number : " num3

echo $num1 $num2 $num3

if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]
then
	echo "Num1 is the greatest"
elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]
then
	echo "Num2 is the greatest"
else
	echo "Num3 is the greatest"
fi
