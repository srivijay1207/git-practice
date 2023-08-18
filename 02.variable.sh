#1/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
echo "pls login with root user"
exit 10
fi

yum remove mysql -y

if [ $? -ne 0 ] ; then

echo "mqsql install failed"
exit 1

else 
 echo "mysql installation is success"

fi

yum remove nginx -y

if [ $? -ne 0 ] ; then

echo "nginx install failed "

exit 10
else 

echo " installed NGINX...!"

fi