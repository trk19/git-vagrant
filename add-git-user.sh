#!/bin/bash 
echo "###############################"
echo "[Task] : add 'git' user "
echo "###############################"
USERNAME="git"
PASSWORD="git"
sudo useradd -m "$USERNAME" -G wheel
sudo echo "$PASSWORD" | sudo passwd --stdin "$USERNAME"
