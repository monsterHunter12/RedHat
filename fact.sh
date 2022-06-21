#!/bin/bash


#user input for cal fact 
read -p "Enter a number to cal factorial " num
#we are inti fact with 1 becoz multi with 0 would 0
fact=1
#cal fact using for loop
#starting loop with 1, go till the num,and multiple with i each time
for((i=1;i<=num;i++))
{
	fact=$((fact*i))
}
#print the factorial
echo The factorial of $num is $fact
