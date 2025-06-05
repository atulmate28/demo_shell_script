#!/bin/bash

<<Help 

this is for user creation
Help

read -p "enter username :" username
read -p "enter password :" password

sudo useradd -m "$username"

echo -e "$password\n$password" |sudo passwd "$username"

cat /etc/passwd | grep $username

sudo userdel $username

echo "user deleted $username"
