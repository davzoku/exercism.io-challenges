#!/usr/bin/env bash

INPUT=$1
ERROR="Error: Only positive numbers are allowed"
COUNT=0

if [ $INPUT -le 0 ]
	then echo $ERROR
    exit 1
fi

while [ $INPUT -ne 1 ]
do
	if [ $(($INPUT%2)) -eq 0 ]
		then INPUT=$(($INPUT/2))
	else 
		INPUT=$(($INPUT*3+1))
    fi
    
    COUNT=$(($COUNT + 1))
done

echo $COUNT
