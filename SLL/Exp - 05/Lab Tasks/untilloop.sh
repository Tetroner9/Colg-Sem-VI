#!/bin/bash

a-0
until [ $a -gt 10 ]
do
	echo $a
	a=`expr $a + 1`
done
