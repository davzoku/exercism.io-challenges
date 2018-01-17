#!/bin/bash

# $1 = positional parameters
echo `date -u --date="$1 + $((10**9)) seconds"`
