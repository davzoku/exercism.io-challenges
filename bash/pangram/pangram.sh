#!/usr/bin/env bash

INPUT=$1
tolowercase=${INPUT,,}

alpha="abcdefghijklmnopqrstuvwxyz"

for char in $(seq 1 ${#alpha})
do
	[[ $tolowercase =~ ${alpha:char-1:1} ]]  || exit 1
done

exit 0