#!/bin/bash

read -p "Enter the size of array: " size

echo "Enter $size elements: "

for((i=0;i<size;i++))
do
	read arr[$i]
done

echo "Contents of array"
for((i=0;i<size;i++))
do
	echo ${arr[$i]}
done


