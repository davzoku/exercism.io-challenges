def encode(plain_text):
    a_z = map(chr, range(ord('a'), ord('z')+1))
    z_a = sorted(a_z, reverse=True)
    conv_table = dict(zip(a_z, z_a))
    result_as_chars = (conv_table[char] for char in plain_text)
    return ''.join(result_as_chars)


def decode(ciphered_text):
    a_z = map(chr, range(ord('a'), ord('z')+1))
    z_a = sorted(a_z, reverse=True)
    conv_table = dict(zip(a_z, z_a))
    result_as_chars = (conv_table[char] for char in plain_text)
    return ''.join(result_as_chars)
