#! /bin/bash

read -p "Enter a city: " city

case $city in
	"Mumbai" | "Delhi" | "Pune")
		echo "The country is India"
		;;
	"Tokyo" | "Kobe" | "Kyoto")
		echo "The country is Japan"
		;;
	*)
		echo "To be added soon!"
		;;
esac

