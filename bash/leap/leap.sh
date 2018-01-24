#!/usr/bin/env bash

INPUT=$1

# Exception Handling
if [ $# != 1 ] || ! [[ $INPUT =~ ^[0-9]{4}$ ]]; then 
	echo "Usage: leap.sh <year>"; exit 1

elif (($INPUT % 4 == 0)) && (($INPUT % 100 != 0 || $INPUT % 400 == 0)) ; then
	echo "true"
else
	echo "false"

fi
