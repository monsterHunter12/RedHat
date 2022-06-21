#!/bin/bash

array=(a b c)
echo $array
echo ${array[@]}
echo ${array[*]}

ARR=("${array[@]}")

echo without the refernce to complete array $ARR
echo with reference to the values ${ARR[@]}
echo Refer 1st index of ARR ${ARR[1]}

echo the name of the script is $0  #to get the script name
echo the first argument is $1    #print the first arg
echo the second argument is $2
echo the third arg is $3
echo $#  #to get the number of args 

false

echo it return the exit status of the last command $?  
