def is_armstrong(number):
    pow = len(str(number))
    sum = 0
    temp = number
    while temp > 0:
        reminder = temp % 10
        # raise by pow
        sum += reminder ** pow
        # floor by 10
        temp //=10
    if number == sum :
        return True
    else:
        return False
