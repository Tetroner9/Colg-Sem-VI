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

echo "Elements at specific index"
echo ${arr[@]:0}
echo ${arr[@]:1}
echo ${arr[@]:2}
echo ${arr[0]:1}
echo ${arr[0]:2}
echo ${arr[@]:1:4}
echo ${arr[@]:2:3}
echo ${arr[@]:1:3}

echo "size of array"
echo ${#arr[@]}
echo ${#arr[*]}

echo "Length of element"
echo ${#arr[0]}
echo ${#arr}

