import re

def word_count(phrase):
    phrase = phrase.lower()
    words = re.findall(r"[0-9a-zA-Z]+(?:'[0-9a-zA-Z]+)?", phrase)
    dict = {}
    for word in set(words):
    	dict[word]=words.count(word)
    return dict

# always prefix regex with r for raw string
# regex to take care of "don't"
# one or more of (0-9a-zA-Z) (followed by ' and one or more of [0-9a-zA-Z]) 0 or 1 time
# re.findall return a list of words that matches the regex
# use set to handle unique objects