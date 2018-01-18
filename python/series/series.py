def slices(series, length):
    if length > len(series) or length == 0:
        raise ValueError("Illegal length input")
    series = [int(i) for i in series]
    output = []
    for i in range(len(series) - length + 1):
        output.append([x for x in series[i:i+length]])
    return output
    
    
    

