#!/bin/bash
whiptail --title "CoderWithTools" --msgbox "CoderWithTools.tech . Great Guide for RedHat" 10 60

if (whiptail --title "The Customize Windows" --yesno "This guide can make a n00b expert. Choose Yes to read and No to exit." 10 60) then
    echo "You chose Yes. Exit status was $?."
else
    echo "You chose No. Exit status was $?."
fi
