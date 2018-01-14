#!/bin/bash

INPUT="$1"

QUESTION_REPLY="Sure."
SHOUT_REPLY="Whoa, chill out!"
SILENT_REPLY="Fine. Be that way!"
DEFAULT_REPLY="Whatever."

# use Grep aka global regular expression print
# -v invert match
# -q quiet; dont write to output
# | is used where the output of first command acts as an input to the second command

# ^^ matches all characters to handle umlaut cases
if [[ $INPUT =~ [A-Z] && $INPUT == ${INPUT^^} ]]
  then echo $SHOUT_REPLY
# else if input contains ? with 0 or more spaces
elif [[ $INPUT =~ \?[[:space:]]*$ ]]
  then echo $QUESTION_REPLY
# else if input dont contain alphabet / number
elif (echo $INPUT | grep -vq '[A-Za-z0-9]')
  then echo $SILENT_REPLY
else
  echo $DEFAULT_REPLY
fi