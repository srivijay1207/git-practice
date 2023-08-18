#1/bin/bash

USERID=$(id -u)

# VALIDATE(){

#    if [ $? -ne 0 ] ; then

#     echo "install failed "

#     exit 10
#     else 

#     echo " installed success...!"
#     fi 
# }

if [ $USERID -ne 0 ]
then
echo "pls login with root user"
exit 10
fi

yum remove mysql -y

VALIDATE $1
echo " uninstalled Mysql"

yum remove nginx -y

VALIDATE $1

echo "NGINX iuninstalled success"