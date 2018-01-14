import calendar

def meetup_day(year,month,week,which):
    WEEKDAY = [
        "Monday", "Tuesday", "Wednesday", "Thursday",
        "Friday", "Saturday", "Sunday",
    ]
    
    INDEX = {
    	'1st' : 0,
        '2nd' : 1,
        '3rd' : 2,
        '4th' : 3,
        '5th' : 4,
        'last': -1,
    }
    
    cal = calendar.Calendar()
    iterator = cal.itermonthdates(year, month)
    dates = [d for d in iterator if WEEKDAY.index(week) == d.weekday() and d.month == month]
    if which != 'teenth':
        return dates[INDEX[which]]
    return [d for d in dates if 20 > d.day >= 10][-1]