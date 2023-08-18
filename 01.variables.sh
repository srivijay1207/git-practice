#!/bin/bash

userid=$ (id -u)

if($userid -ne 0); then

echo "pls login with root user"
else
    echo "Root user"
fi

yum install mysql -y 

echo " mysql installed successful"

echo " mysql installed successfulFailed .."
