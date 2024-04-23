#! /bin/bash

read -p "Enter string: " string

reversed_string=$(echo "$string" | rev)
echo "Reversed string: $reversed_string"
