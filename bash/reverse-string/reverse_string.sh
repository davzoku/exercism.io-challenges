#!/bin/bash

# $* is the list of the positional parameters, but with word splitting.
INPUT=$*

reverse() {
# use rev
  echo "${INPUT}" | rev
}

reverse