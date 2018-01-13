def distance(strand_a, strand_b):
    if len(strand_a) != len(strand_b):
        raise ValueError('Strands are not equally long')
    return sum(1 for i in range(len(strand_a)) if strand_a[i] != strand_b[i])
    
# Hamming dist requires 2 strand to be of same length, else raise error
# count the no. of times the corresponding characters are diff