#!/bin/bash

read -p "Enter X: " x
read -p "Enter Y: " y

if [ $x -gt $y ]
then
	echo "X is greater than Y"
else
	echo "Y is greater than X"
fi
