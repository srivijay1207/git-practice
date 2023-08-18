#1/bin/bash

USERID=$(id -u)

# VALIDATE(){

#    if [ $1 -ne 0 ] ; then

#     echo "failed $2 "

#     exit 10
#     else 

#     echo "success $2"
#     fi 
# }

if [ $USERID -ne 0 ]
then
echo "pls login with root user"
exit 10
fi

yum remove mysql -y

VALIDATE $? "installed Mysql"

yum remove nginx -y

VALIDATE $? "installed NGINx"