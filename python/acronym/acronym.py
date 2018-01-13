def abbreviate(words):
    acronym = ""
    for character in words.replace('-', ' ').split():
        acronym = acronym + character[0].upper()
    return acronym
