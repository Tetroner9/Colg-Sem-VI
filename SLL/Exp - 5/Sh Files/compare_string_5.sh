#! /bin/bash

echo "Enter the strings"
read str1 str2

if [ $str1 = $str2 ]
then
 echo "Two strings are same"
else
 echo "Two strings are different"
fi

