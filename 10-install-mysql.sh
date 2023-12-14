#!/bin/bash
ID=$(id -u)
if [ $ID -ne 0 ]
then
echo "ERROR:: please run this script with root previleges"
exit 1 # you can give other than 0
else
echo "you are root user"
fi

yum install mysql -y
if [ $? -ne 0 ]
then 
   echo "installation of mysql is failed"
   exit 1
else 
   echo "installation of mysql is success"
fi
   