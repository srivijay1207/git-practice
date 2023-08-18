#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then

echo "pls login with root user"
exit 10

fi

yum remove mysql -y 


# if [ $? -ne 0 ]; then
# echo " mysql installed Failed .."
# exit 1
# else
# echo "mysql installed successful"
# fi


