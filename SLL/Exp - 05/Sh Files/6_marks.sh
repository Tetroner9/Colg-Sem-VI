#!/bin/bash

calculate_marks() {
	total=$(( $1 + $2 + $3 ))
	average=$(( $total / 3 ))
}

determine_class() {
	if [ $1 -ge 75 ]; then
		echo "Distinction"
	elif [ $1 -ge 60 ]; then
		echo "First Class"
	elif [ $1 -ge 50 ]; then
		echo "Second Class"
	elif [ $1 -ge 35 ]; then
		echo "Third Class"
	else
		echo "Failed"
	fi
}

read -p "Enter marks for Physics: " physics
read -p "Enter marks for Chemistry: " chemistry
read -p "Enter marks for Mathematics: " mathematics

calculate_marks $physics $chemistry $mathematics

class=$(determine_class $average)

echo "Total marks:   $total"
echo "Average marks: $average"
echo "Class:         $class"

