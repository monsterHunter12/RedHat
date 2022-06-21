#!/bin/bash

for i in {1..10}
do
	echo $i
done

echo While loop

x=1
while [[ $x -le 10 ]]; do
	echo "$x"
	(( x += 1 ))
done
