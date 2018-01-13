def to_rna(dna_strand):
  dna_to_rna = {
  	'G':'C',
    'C':'G',
    'T':'A',
    'A':'U'
    }
  try:
    # lookup key, put values into a list, then convert to string
    rna_strand = ''.join([ dna_to_rna[x] for x in dna_strand.upper() ])
  except KeyError:
    raise ValueError("Invalid input: DNA strand must consist of only GCTA")
  return rna_strand

# use dictionary key 
# exception handling