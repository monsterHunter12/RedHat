#!/bin/bash

arr=(22 33 44 55 66 77 88 99)
sum=0

for i in ${arr[@]}
do
	sum=`expr $sum + $i`
done

echo The sum of all elements of array is $sum

