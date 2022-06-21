#!/bin/bash
num=1
for ((i=1;i<=5;i++))
do
	for((j=1;j<=i;j++))
	do
		echo -n "$num"
		num=$((num+1))
	done
	num=1
	echo " "
done
