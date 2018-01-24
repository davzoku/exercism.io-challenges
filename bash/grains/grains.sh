#!/usr/bin/env bash

INPUT=$1

if (($INPUT < 1 || $INPUT > 64)); then
	echo "Error: invalid input"
	exit 1

else 
	grainCount=$(( 2**(${INPUT}-1) ))
    # remove prefix
	echo ${grainCount#-}
fi