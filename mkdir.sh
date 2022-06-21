#!/bin/bash

read -p "Enter a name for new folder " name

if [ ! -d $name ]
then
	mkdir -p $name
else
	echo " Directory already present with the same name "
	read -p "Enter a new name for folder " name 
fi
