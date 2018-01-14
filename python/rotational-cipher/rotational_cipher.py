def rotate(text, key):
    ciphertext =''
    for x in text:
        if x.isalpha():
        	# change to unicode
            num = ord(x)
            num += key
            
            if x.isupper():
                if num > ord('Z'):
                    num -= 26
                elif num < ord('A'):
                    num += 26
            elif x.islower():
                if num > ord('z'):
                    num -= 26
                elif num < ord('a'):
                    num += 26
            # change back to char        
            ciphertext += chr(num)
        else:
        	# handle numbers, symbols, spaces
            ciphertext += x
     
    return ciphertext
