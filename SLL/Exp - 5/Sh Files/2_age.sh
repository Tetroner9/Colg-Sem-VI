#! /bin/bash

echo "Enter your age: "
read age

if [[ "$age" -ge 18 ]]; then
	echo "You are egligible for voting"
else
	echo "You are not egligible for voting"
fi
