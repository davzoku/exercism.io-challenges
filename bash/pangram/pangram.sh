#!/usr/bin/env bash

#tolowercase
INPUT=${1,,}

alpha="abcdefghijklmnopqrstuvwxyz"

for char in $(seq 1 ${#alpha})
do
	[[ $INPUT =~ ${alpha:char-1:1} ]]  || exit 1
done

exit 0