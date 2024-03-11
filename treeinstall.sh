#!/bin/bash 
userid=$(id -u)
if [ $userid -eq 0 ]
then 
  apt-get install tree -y 
else 
  echo " Please run the script with root user "
fi 
