#!/bin/bash

userid=$(id -u)

if($userid -ne 0); then

echo "pls login with root user"
exit 10

fi

yum install mysql -y 


if($? -ne 0); then
echo " mysql installed Failed .."
exit 1
else
echo "mysql installed successful"
fi


