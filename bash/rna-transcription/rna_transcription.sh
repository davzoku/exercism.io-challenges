#!/usr/bin/env bash

DNA=$1
RNA=""
ERROR="Invalid nucleotide detected."

G="C"
C="G"
T="A"
A="U"

# NT = NucleoTide
for NT in $(seq 1 ${#DNA})
do
	if [ ${DNA:NT-1:1} == "G" ]
    	then RNA+=$G
	elif [ ${DNA:NT-1:1} == "C" ]
    	then RNA+=$C
	elif [ ${DNA:NT-1:1} == "T" ]
    	then RNA+=$T      
	elif [ ${DNA:NT-1:1} == "A" ]
    	then RNA+=$A        
    else
    	echo $ERROR
        exit 1
    fi
done

echo $RNA