#!/bin/bash

INPUT=$1

if (($INPUT < 1 || $INPUT > 64)); then
	echo "Error: invalid input"
	exit 1
elif (($INPUT == 64)); then
    #echo $(((2**(${INPUT} -1)* -1)))
    echo "9223372036854775808"

else 
	echo $(( 2**(${INPUT} -1) ))

fi