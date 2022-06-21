#!/bin/bash

read -p "Enter the menu number : " menu_code

echo $menu_code

case $menu_code in
	1)
		echo "Option 1"
		;;
	*)
		echo "Default"
		;;
esac
