#!/bin/bash

cur_date=$(date)
cur_jobs=$(ps -aux | awk '{print $11}')
new_cur_jobs=$(pstree)
read -p "Enter username : " usr
read -sp "Enter Password : " pwd

printf "\n "

echo Welcome back $usr Date : $cur_date
echo Password entered is $pwd
printf "The runnning Processes are $new_cur_jobs\n"
