#!/bin/bash
red="\033[1;31m"
green="\033[1;32m"
yellow="\033[1;33m"
blue="\033[1;34m"
purple="\033[1;35m"
cyan="\033[1;36m"
grey="\033[0;37m"
reset="\033[m"

function update(){
	sudo apt-get update -y >> install.log
	# $? is used to get the exit code of the last executed command
	if [ $? -eq 0 ];
	then
		echo "Update command exit 0"
	else
		echo "Update command exit 1"
	fi
}
function update_upgrade(){
	sudo apt-get update && upgrade  >> install.log
	if [ $? -eq 0 ];
    then
        echo "Update and upgrade -y command exit 0"
    else
        echo "Update and upgrade -y command exit 1"
    fi
}
function update_upgrade_or(){
	sudo apt-get update && upgrade -y  >> install.log
	if [ $? -eq 0 ];
    then
        echo "Update and upgrade -y command exit 0"
    else
        echo "Update and upgrade -y command exit 1"
    fi
}
function apache(){
	sudo apt-get install apache2 ssl-cert -y >>install.log
	if [ $? -eq 0 ];
    then
        echo "Install apache ssl-cert command exit 0"
    else
    	echo "Install apache ssl-cert command exit 1"
    fi
	sudo chown -R www-data:www-data /var/www >> install.log
	if [ $? -eq 0 ];
    then
        echo "Ownership for /var/www command exit 0"
    else
        echo "Ownership for /var/www command exit 1"
    fi
	sudo a2enmod rewrite >> install.log
	if [ $? -eq 0 ];
    then
        echo "Enable rewrite for apcahe command exit 0"
    else
        echo "Enable rewrite for apache command exit 1"
    fi
	sudo service apache2 restart >> install.log
	if [ $? -eq 0 ];
    then
        echo "Apache Restart command exit 0"
    else
        echo "Apache Restart command exit 1"
    fi
}
function mysql_php_admin(){
	sudo apt-get install mysql-server mysql-client >> install.log
	if [ $? -eq 0 ];
    then
        echo "Install mysql-client-server command exit 0"
    else
        echo "Install mysql-client-server command exit 1"
    fi
	sudo apt-get install phpmyadmin -y
	if [ $? -eq 0 ];
    then
        echo "Install phpmyadmin command exit 0"
    else
        echo "Install phpmyadmin command exit 1"
    fi
}
function php(){
	sudo apt-get install php8.1 >> install.log
	if [ $? -eq 0 ];
    then
        echo "Install PHP command exit 0"
    else
        echo "Install PHP command exit 1"
    fi
}
function lamp(){
	update_upgrade_or
	apache
	php
	mysql_php_admin
}

echo -e "$green .\n This is a linux utility tool"
echo -e "Choose the options from below to began the Installation of LAMP stack.$reset"
echo -e "$blue . \n 1.Update --> $reset sudo apt update -y. $blue"
echo -e "2.Update and upgrade -->$reset sudo apt-get update && upgrade -y $blue"
echo -e "3.Update and upgrade not overridden -->$reset sudo apt-get update && upgrade $blue"
echo -e "4.Install Apache server and enable default configs --> $reset apt-get install apache2 ssl-cert && chown -R www-data:www-data /var/www && sudo a2enmod rewrite && sudo php8enmod mcrypt && sudo service apache2 restart $blue"
echo -e "5.Install Mysql and phpmyadmin -->$reset apt-get install mysql-server mysql-client phpmyadmin.$blue"
echo -e "6.Install PHP --> $reset apt-get install php8.1 $blue"
echo -e "$purple \n 7.Install Apache Mysql PhpMyAdmin and php. $blue"
echo -e "08.EXIT. $rest"

read -p "Choose one option to continue or please CTRL+C to exit   :    " option

echo "Option received as option number $option"

case $option in
	1)
		echo -e "$green UPDATE $reset"
		update
		;;
	2)
		echo -e "$green UPDATE and UPGRADE"
		update_upgrade
		;;
	3)
		echo -e "$red UPDATE and UPGRADE not overridden $reset "
		update_upgrade_or
		;;
	4)
		echo -e "$cyan Install and configure Apache $reset "
		apache
		;;
	5)
		echo -e "$cyan Install mySql and PhpMyAdmin $reset "
		mysql_php_admin
		;;
	6)
		echo -e "$cyan Install PHP $reset "
		php
		;;
	7)
		echo -e "$yellow Complete Installation Apache Mysql PhpMyadmin PHP $reset"
		lamp
		;;
	8)
		echo "EXIT"
		;;
	*)
		echo -e "Unknown Option"
		;;
esac
