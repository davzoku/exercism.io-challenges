import re

def verify(isbn):
    isbn = isbn.replace('-','').upper()
	# Accepts number and X at the end of string if any
    if not re.match(r'\d+X?$', isbn):
        return False
        
    i = 10
    total = 0
    for digit in isbn:
        if digit == 'X':
            digit = 10
        else:
            digit = int(digit)
            
        total += digit * i
        i -= 1
    return total !=0 and total % 11 == 0


