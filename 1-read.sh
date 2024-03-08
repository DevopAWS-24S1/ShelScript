#!/bin/bash
echo " Adding two numbers"
echo "Enter Number1 value : "
read Number1
echo "Enter Number2 value : "
read Number2
sum=$(($Number1 + $Number2))
echo "The sum of two numbers is : $sum"
