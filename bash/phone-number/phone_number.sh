#!/usr/bin/env bash

INPUT=$1
REGEX="^1?[2-9][0-9]{2}[2-9][0-9]{6}$"

# replace all non-numeric characters
RESULT=${INPUT//[!0-9]/}

if [[ $RESULT =~ $REGEX ]]; then
#remove prefix 1
	echo ${RESULT#1}
else
	echo "Invalid number.  [1]NXX-NXX-XXXX N=2-9, X=0-9"
	exit 1
fi


