import re 
# using regex

def hey(what):
	# Start with whitespace; 0 or more; End with whitespace
    if re.search("^\s*$", what):
        return "Fine. Be that way!"
    # if entire string contains uppercase and no lowercase
    elif what.isupper():
        return "Whoa, chill out!"
    # matches a ?; ends with 0 or more whitespace
    elif re.search("\?\s*$", what):
        return "Sure."
    else:
        return "Whatever."