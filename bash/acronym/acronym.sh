#!/usr/bin/env bash

#toupper, remove hyphen
INPUT=$(echo ${1^^} | tr '-' ' ')
ACRONYM=""

for WORD in $INPUT; do
	INITIAL=${WORD:0:1}
    ACRONYM+="$INITIAL"
done    

echo $ACRONYM
  