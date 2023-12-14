#!/bin/bash
ID=$(id -u)
if [ $ID -ne 0 ]
then
echo "ERROT:: please run this script with root previleges"
else
echo "you are root user"
fi