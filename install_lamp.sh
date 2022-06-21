#!/bin/bash

# inti all variables for eg colors
white='\033[0m'
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
purple='033[0;34m'
cyan='033[0;36m'

echo -e "$green \n Starting Installation . $white"
echo "Progress: [##.........................]10%"
printf "\r Progress: [####......................]14%%"

#command to update && upgrade
#sudo apt-get update -y
#sudo apt-get upgrade -y

printf "\r Progress: [#####.....................]20%%"

#install apache2
sudo apt-get install apache2 ssl-cert -y
#Install php
sudo apt-get install php8.1 -y
#install mysql
sudo apt-get install mysql-server mysql-client -y
#install phpmyadmin
sudo apt-get install phpmyadmin
#config the packages
sudo chown -R www-data:www-data /var/www
sudo a2enmod rewrite
sudo service apache2 restart

#user the info about installation
