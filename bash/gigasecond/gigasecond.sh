#!/bin/bash

# cant use 1e+09 :(
# $1 = positional parameters
echo `date -u --date="$1 + 1000000000 seconds"`
