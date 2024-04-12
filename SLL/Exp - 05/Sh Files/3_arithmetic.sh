#! /bin/bash

echo "Enter the two numbers"
read num1 num2 

# Using echo

echo "Results using echo:"
echo "Addition       : $(($num1 + $num2))"
echo "Subtraction    : $(($num1 - $num2))"
echo "Multiplication : $(($num1 * $num2))"
echo "Division       : $(($num1 / $num2))"
echo "Remainder      : $(($num1 % $num2))"
echo "-----------------------------------"

# Using expr

echo "Results using expr:"
echo "Addition       : $(expr $num1 + $num2)"
echo "Subtraction    : $(expr $num1 - $num2)"
echo "Multiplication : $(expr $num1 \* $num2)"
echo "Division       : $(expr $num1 / $num2)"
echo "Remainder      : $(expr $num1 % $num2)"

