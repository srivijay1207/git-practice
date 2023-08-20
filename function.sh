#!/bin/bash

# Hello (){
#     echo " welcome to Devops:$1 $2"

# }

# #echo "i am vijay"
#  Hello $1 $2

USERID=$ (id -u)

if [ $USERID -ne 0 ]; then
    echo "pls login with root user....?"
    exit 1
fi

    yum install mysql -y

if [ $? -ne 0 ]; then
    echo "installation Mysql failed"
else
    echo "instalation Mysql is success....!!!"
fi