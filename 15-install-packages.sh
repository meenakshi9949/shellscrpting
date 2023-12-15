#!/bin/bash

TIMESTAMP=$(date +$F-%H-%M-%S)

LOGFILE="/tmp/$0/$TIMESTAMP.log"

R="/e[31m" 
G="/e[32m" 
y="/e[33m" 
N="/e[0m"

ID=$(id -u)
if [ $ID -ne 0 ]
then 
    echo -e "$R ERROR::RUN WITH ROOT ACCESS $N"
    exit 1 
else 
    echo "$G you are root user $N"
fi 

yum install mysql -y 

if [ $? -ne 0 ]
then 
    echo "$R ERROR:installing mysql failed $N"
    exit 1
else 
    echo "$G installing mysql is success$N"
fi      

yum install git -y

if [ $? -ne 0 ]
then 
    echo "$R ERROR:install git is failed $N"
    exit 1
else 
    echo "$G installing git is success $N"
fi 


