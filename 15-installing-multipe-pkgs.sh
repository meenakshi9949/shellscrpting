#!/bin/bash
ID=$(id -u)
if [ $ID -ne 0 ]
then
echo "ERROR:: please run this script with root previleges"

else
echo "you are root user"
fi

