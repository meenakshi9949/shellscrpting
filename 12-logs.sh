#!/bin/bash
ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/tmp/$0-$TIMESTAMP.log"
echo "script name :: $0"
VALIDATE(){
    if [ $1 -ne 0 ]
    then 
    echo "ERROR:: $2....failed"
    exit 1 
    else 
    echo "$2.... success"
    fi
}

if [ $ID -ne 0 ]
then 
   echo "ERROR::please run this script with roo access" 
exit 1 
else 
   echo "you are root user" 
fi 
yum install mysql -y &>> $LOGFILE
VALIDATE $? "installing mysql" #THIS IS FUNCTION
yum install git -y &>> $LOGFILE
VALIDATE $? "installing git" #THIS IS FUNCTION