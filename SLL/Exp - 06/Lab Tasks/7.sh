#!/bin/bash

x='A'
y='B'
my_function()
{
	local x='C'
	y='D'
	echo "Inside function: x: $x, y: $y "
}

echo "Before executing function: x: $x, y: $y "
my_function
echo "After executing function: x: $x, y: $y "

