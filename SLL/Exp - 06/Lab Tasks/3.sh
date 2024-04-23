#!/bin/bash

arr=(Hulk Amar 100 Akbar Anthony)
echo ${arr[@]}
echo ${arr[*]}
echo ${arr[@]:0}
echo ${arr[*]:0}
echo "First element"
echo ${arr[0]}
echo ${arr}
echo "Specific element"
echo "Fourth element is ${arr[3]}"
echo "Second element is ${arr[1]}"
