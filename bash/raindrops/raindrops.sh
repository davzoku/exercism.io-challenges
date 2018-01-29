#!/usr/bin/env bash

INPUT=$1
# 3 * 5 * 7
if (($INPUT % 105 == 0))
	then echo "PlingPlangPlong"
# 3 * 5
elif (($INPUT % 15 == 0))
	then echo "PlingPlang"
# 3 * 7
elif (($INPUT % 21 == 0))
	then echo "PlingPlong"
# 5 * 7
elif (($INPUT % 35 == 0))
	then echo "PlangPlong"

elif (($INPUT % 3 == 0))
	then echo "Pling"
    
elif (($INPUT % 5 == 0))
	then echo "Plang"
    
elif (($INPUT % 7 == 0))
	then echo "Plong"
    
else
    echo "$INPUT"
fi

