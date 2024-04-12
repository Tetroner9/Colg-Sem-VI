#!/bin/bash

read -p "Enter a number: " num

if [ $num -lt 0 ]
then
	echo "Negative"
elif [ $num -gt 0 ]
then
	echo "Positive"
else
	echo "Neither Positive Nor Negative"
fi

