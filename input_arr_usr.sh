#!/bin/bash
declare -a arr
read -p "How many elements " elements
for((i=0;i<$elements;i++))
{
	read -t 5 -p "Enter $i element : " ele
	arr[$i]=$ele
}

echo The new array is :  ${arr[@]}
