#!/usr/bin/env bash

WHO=$1
USAGE="Usage: ./error_handling <greetee>"

if [ $# -ne 1 ]
	then echo $USAGE
    exit 1
else
	echo "Hello, $WHO"
	exit 0
fi