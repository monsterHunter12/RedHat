#!/bin/bash

Line=1

while read -r CURRENT_LINE
	do
		echo "$Line : $CURRENT_LINE"
	((Line++))
done < "data.txt"
