def detect_anagrams(word, candidates):
    output =[]
    sorted_word = ''.join(sorted(word.lower()))
    for candidate in candidates:
        sorted_candidate = ''.join(sorted(candidate.lower()))
        # first condition compare if they contain same sorted array of char
        # second condition rejects if they are the same word
        if (sorted_word == sorted_candidate and word.lower() != candidate.lower()):
            output.append(candidate)
    return output
