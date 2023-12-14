#!/bin/bash
ID=$(id -u)
VALIDATE(){
    if [ $? -ne 0 ]
    then 
    echo "installation is failed"
    exit 1 
    else 
    echo "installation is success"
    fi
}

if [ $ID -ne 0 ]
then 
   echo "ERROR::please run this script with roo access" 
exit 1 
else 
   echo "you are root user" 
fi 
yum install mysql -y 
VALIDATE #THIS IS FUNCTION
yum install git -y 
VALIDATE #THIS IS FUNCTION