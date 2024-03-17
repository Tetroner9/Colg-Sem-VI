#! /bin/bash

# Using while loop
echo "Output using while loop"
i=1
while [ $i -le 8 ]
do
	echo "Linux"
	i=$((i+1))
done
echo " "
echo "Output using for loop"
# Using for loop

for (( i=1; i<=8; i++ ))
do
	echo "Linux"
done

