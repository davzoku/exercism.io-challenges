#!/usr/bin/env bash

INPUT=$1

# TRUE if $INPUT is unset
if [ -z "$INPUT" ]
	then echo "One for you, one for me."
else
	echo "One for $INPUT, one for me."
fi