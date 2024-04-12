#! /bin/bash

if [ "$#" -lt 2 ]; then
	echo "Not a valid argument"
	exit 1
fi

case $1 in 
	"--create")
		touch "$2"
		echo "File $2 created successfully"
		;;
	"--delete")
		if [ -e "$2" ]; then
			rm "$2"
			echo "File $2 deleted successfully"
		else
			echo "File $2 does not exist"
		fi
		;;
	*)
		echo "Not a valid argument"
		;;
esac
