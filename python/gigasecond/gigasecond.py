from datetime import timedelta

def add_gigasecond(birth_date):
    date2 = birth_date + timedelta(seconds =1e+09)
    return date2
