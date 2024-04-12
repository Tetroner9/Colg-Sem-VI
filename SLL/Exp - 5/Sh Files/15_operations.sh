#! /bin/bash

read -p "Enter the first and second number: " num1 num2

echo "Choose an arithmetic operation: 
1. Addition
2. Subtraction
3. Multiplication
4. Division
5. Exponentiation"
read choice

case $choice in
	1)
		result=$(echo "$num1 + $num2" | bc)
		operation="Addition"
		;;
	2)
		result=$(echo "$num1 - $num2" | bc)
		operation="Subtraction"
		;;
	3)
		result=$(echo "$num1 * $num2" | bc)
		operation="Multiplication"
		;;
	4)
		result=$(echo "$num1 / $num2" | bc)
		operation="Division"
		;;
	5)
		result=$(echo "$num1 ^ $num2" | bc)
		operation="Exponentiation"
		;;
	*)
		echo "Invalid choice."
		exit 1
		;;
esac

echo "$operation result: $result"
