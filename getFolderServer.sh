#! /bin/bash

#   read User name and password from for server
read -p "Enter User name: " user
#  if user name is empty, then exit
if [ -z "$user" ]; then
    echo "User name is empty"
    exit
fi
# read ip address
read -p "Enter IP address: " ip
#  if ip address is empty, then exit
if [ -z "$ip" ]; then
    echo "IP address is empty"
    exit
fi

# enter server location folder
read -p "Enter server location folder: " folder
if [ -z "$folder" ]; then
    echo "folder address is empty"
    exit
fi
#  enter save local folder
read -p "Enter save local folder: " save
if [ -z "$save" ]; then
    echo "save address is empty"
    exit
fi
scp -r $user@$ip:$folder $save
#  change echo to green
echo -e "\e[32m"
echo "Get folder from server success"



