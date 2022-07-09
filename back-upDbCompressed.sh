#! /bin/bash

#  dump mongo db


 read -p "Enter User name: " user
 if [ -z "$user" ]; then
     echo "User name is empty"
     exit
 fi


echo -e "\e[32m"
mongodump
# get current date and time
date=`date +%Y-%m-%d-%H-%M`
zip -r backup_$date.zip dump
mv backup_$date.zip /home/$user/Downloads/data
rm -rf dump

echo -e "\e[33m"
echo "Dump mongo db success"


