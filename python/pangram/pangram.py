def is_pangram(sentence):
    cleanString = sentence.lower()
    cleanString = filter(lambda x: x.isalpha(), cleanString)
    return True if len(set(cleanString)) == 26 else False

# a sentence containing every letter of the alphabet.
# cleanString1 converts everything to lowercase to settle upper and lowercase
# cleanString2 uses filter to remove numbers and symbols
# compare whether the unique set has 26 diff objects which should refer to 26 alphabets. 