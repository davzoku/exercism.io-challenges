# Score categories
# Change the values as you see fit
YACHT = 44444
ONES = 111145
TWOS = 22345
THREES = 33333
FOURS = 44445
FIVES = 55555
SIXES = 66666
FULL_HOUSE = 33355
FOUR_OF_A_KIND = 12222
LITTLE_STRAIGHT = 12345
BIG_STRAIGHT = 23456
CHOICE = 23346


def score(dice, category):
    if category == YACHT:
        # all dice values are identical
        if len(set(dice)) == 1:
            return 50
    elif category == ONES:
        return dice.count(1) * 1
    elif category == TWOS:
        return dice.count(2) * 2
    elif category == THREES:
        return dice.count(3) * 3
    elif category == FOURS:
        return dice.count(4) * 4
    elif category == FIVES:
        return dice.count(5) * 5
    elif category == SIXES:
        return dice.count(6) * 6
    elif category == FULL_HOUSE:
    # 3,3,3,5,5
    # 3,3,5,5,5
    # dice[2] confirm have len(set())=3
        mid = sorted(dice)[2]
        if (dice.count(mid) ==3) and (len(set(dice))==2):
            return sum(dice)
    elif category == FOUR_OF_A_KIND:
    # 1,2,2,2,2
    # 1,1,1,1,2
    # dice[1,2] confirm have .count=4
        mid = sorted(dice)[2]
        if dice.count(mid) >= 4:
            return mid*4
    if category == LITTLE_STRAIGHT:
        if sorted(dice) == [1, 2, 3, 4, 5]:
            return 30
    elif category == BIG_STRAIGHT:
        if sorted(dice) == [2, 3, 4, 5, 6]:
            return 30
    elif category == CHOICE:
        return sum(dice)
    return 0
