#! /bin/bash

read -p "Enter temperature in Celcius: " celsius

farheneit=$(echo "scale=2; ($celsius *9/5) + 32" | bc)

echo "$celsius in Farheneit is $farheneit."
