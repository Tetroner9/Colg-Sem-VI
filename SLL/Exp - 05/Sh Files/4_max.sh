#! /bin/bash

echo "Enter the  numbers"
read num1 num2

if [ $num1 -gt $num2 ]
then
 echo "1st number max"
elif [ $num1 -lt $num2 ]
then
 echo "2nd number max"
else
 echo "Equal"
fi 
