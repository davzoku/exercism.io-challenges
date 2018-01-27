#!/usr/bin/env bash

function is_armstrong {
	INPUT=$1
    POW=${#INPUT}
    TEMP=$INPUT
    SUM=0
    
    while [ $TEMP -ne 0 ]
    do
    REM=$(expr $TEMP % 10)
    SUM=$(expr $SUM + $(($REM**$POW)))
    TEMP=$(expr $TEMP / 10)
    done
        
    if [ $SUM -eq $INPUT ]
        then echo "true"
    else
        echo "false"
        exit 1
    fi
}

"$@"