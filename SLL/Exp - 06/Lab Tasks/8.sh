#!/bin/bash

declare -A arr_A
arr_A[a]="Thriller"
arr_A[b]="Horror"
arr_A+=([c]="Fantasy"[d]="Crime")
echo ${arr_A[@]}


