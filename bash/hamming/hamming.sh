#!/usr/bin/env bash

STRAND_A=$1
STRAND_B=$2
LEN_A=${#STRAND_A}
LEN_B=${#STRAND_B}
DIST=0

DIFF_LENGTH="The two strands must have the same length."
USAGE="Usage: hamming.sh <string1> <string2>"

if [ $# -ne 2 ]
	then echo $USAGE
    exit 1
elif [ ${LEN_A} -ne ${LEN_B} ]
	then echo $DIFF_LENGTH
    exit 1
else
	for ((i=0;i<LEN_A;i++)) 
    do
        if [ ${STRAND_A:$i:1} != ${STRAND_B:$i:1} ]
        then ((DIST++))
        fi
    done
    
    echo $DIST
fi