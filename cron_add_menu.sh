#!/bin/bash

read -p "Enter the filename with .sh extension : " filename

if [ ! -f $filename ]
then
	echo " File Not Found ! "
else
	if (whiptail --title "Add cron job wizard" --yesno "This is a wizrd to add cron jobs, next you can add the date/time to run cron job. Yes to continue and No to exit." 10 60) then
    	date_time=$(whiptail --inputbox "Enter date/time in this format : * * * * * " 10 30 3>&1 1>&2 2>&3)
	whiptail --ok-button Done --msgbox "Date time is  $date_time . Creating Cron job " 10 30
	echo "Updating cron job for cleaning temporary files"
	crontab -u kali -l >/tmp/crontab
	echo "$date_time rm -f $filename" >> /tmp/crontab
	crontab -u kali /tmp/crontab
	crontab -l
else
    echo "Thank you for your support."
fi
fi
