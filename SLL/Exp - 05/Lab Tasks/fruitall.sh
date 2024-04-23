#!/bin/bash

read -p "Enter fruit name: " FRUIT

case "$FRUIT" in
	"apple" | "APPLE")echo "Apple pie is tasty";;
	"banana" | "BANANA")echo "banana pie is tasty";;
	"kiwi" | "KIWI")echo "kiwi pie is nasty";;
esac
