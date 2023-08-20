#!/bin/bash

# Hello (){
#     echo " welcome to Devops:$1 $2"

# }

# #echo "i am vijay"
#  Hello $1 $2



USERID=$(id -u)
R="\e[31m"
G="\e[32m"
N="\e[0m"

if [ $USERID -ne 0 ]; then
    echo -e "${R}..pls login with root user?:${N} else"
    exit 1
fi

    yum install mysql -y

if [ $? -ne 0 ]; then
    echo "installation Mysql failed"
else
    echo -e "${G} instalation Mysql is success....!!!"
fi