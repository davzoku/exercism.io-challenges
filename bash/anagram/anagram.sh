#!/usr/bin/env bash

function order {
	echo $(echo "$1" | grep -o . | sort | tr -d "\n")
}

A=${1,,}
SORT_A=$(order $A)
B=$2

for WORD in $B; do
	SORT_WORD=$(order "$WORD")
	if [[ ${SORT_WORD,,} == $SORT_A && ${WORD,,} != $A ]]
    	then ANAGRAM+=" $WORD"
        
    fi
done    

echo $ANAGRAM