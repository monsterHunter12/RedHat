#!/bin/bash

echo "Starting with the update and upgrade "
#update is used to RESYNCHRONIZE the package index file from their sources.
#indexes of available packages are fetched from the location(s) specified in /etc/apt/sources.list
sudo apt-get update -y
#upgrade is used to install the newest version of all packages currently installed on the system 
#from the sources enumerated in /etc/apt/sources.list.
sudo apt-get upgrade -y
echo "Finished updating and upgrading"
echo "Starting cleaning"
#autoremove is used to uninstall the packages that were insatlled as a part of dependenies managemen
#but are no longer needed. As there may not be any package at present depending on it
sudo apt-get autoremove -y
#autoclean : when we install any package  it is downloaded to local storage, from where the installa
#tion happens. Overtime, files and dirs that are not needed can be removed.This is done by autoclean
sudo apt-get autoclean  -y
echo "Cleaning finished "
