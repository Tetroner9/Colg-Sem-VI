#! /bin/bash

read -p "Enter the strings separated by spaces: " input_string
reversed_string=$(echo "$input_string" | awk '{ for (i=NF; i>0; i--) printf "%s ", $i }')
echo "Reversed order word: $reversed_string" 
