import itertools
import re

def decode(string):
    decoded_string = ''
    # find all characters which has a number + char or just standalone char
    characters = re.findall(r"([0-9]*)([a-zA-Z ])",string)
    for l, character in characters:
        if l == '':
            l = 1
        decoded_string += character * int(l)
    return decoded_string


def encode(string):
    encoded_string = ''
    for k, g in itertools.groupby(string):
        l = len(list(g))
        if l > 1:
            encoded_string += '%d%s' %(l, k) 
        else:
            encoded_string += '%s' %k
    return encoded_string