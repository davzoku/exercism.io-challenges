#!/usr/bin/env bash

INPUT=$1

sum_of_squares=$((($INPUT*($INPUT + 1)*(2*$INPUT + 1))/6))

square_of_sum=$(((($INPUT*($INPUT + 1)/2))**2))

if [ $# -eq 2 ]
then
    if [ $2 == "-s" ]
    then echo "$sum_of_squares"
    elif [ $2 == "-S" ]
    then echo "$square_of_sum"
    fi
else
    echo $(($square_of_sum - $sum_of_squares))
fi
