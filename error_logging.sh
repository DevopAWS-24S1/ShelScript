#!/bin/bash 
DATE=$(date +%F)
outputfile="$0"-$DATE.log

userid=$(id -u)
if [ $userid -eq 0 ]
then 
  apt-get install tree -y &>>/tmp/$outputfile
  if [ $? -eq 0  ]
  then 
  echo "Tree software installed sucessfully"
  else 
  echo " Tree software installation failure"
  fi 
else 
  echo " Please run the script with root user "
fi 
