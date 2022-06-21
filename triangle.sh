#!/bin/bash

read -p "Enter 1st side of triangle : " a
read -p "Enter 2nd side of triangle : " b
read -p "Enter 3rd side of triangle : " c

if [ $a == $b -a $b == $c -a $c == $a ]
then
echo Equilateral

elif[ $a == $b -o $b == $c -o $c == $a ]
then
echo Isosceles
else
echo Scalene

fi
