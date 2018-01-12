def is_isogram(string):
    cleanString = string.replace(' ','').replace('-','').lower()	
    return True if len(set(cleanString)) == len(cleanString) else False

# isograms do not have repeating characters
# cleanString takes care of -, spaces and upper/lowercases.
# A set contains an unordered collection of unique and immutable objects.
# compare len of set of unique characters and string length
