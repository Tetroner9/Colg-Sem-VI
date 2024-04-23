#!/bin/bash

echo "Declare Arrays"
declare -a arr_dec

arr_dec[0]='Titanic'
arr_dec[1]='Interstellar'
arr_dec[2]='Conjuring'

echo ${arr_dec[@]}


