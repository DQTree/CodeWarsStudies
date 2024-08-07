def testit(s):
    middle_chars = []

    for i in range(0, len(s) - 1, 2):
        char1 = s[i]
        char2 = s[i + 1]

        middle_char = get_middle_char(char1, char2)
        middle_chars.append(middle_char)
    
    if len(s) % 2 != 0:
        middle_chars.append(s[-1])
    
    return ''.join(middle_chars)

def get_middle_char(char1, char2):
    code1 = ord(char1)
    code2 = ord(char2)
    
    middle_code = (code1 + code2) // 2
    middle_char = chr(middle_code)
    
    return middle_char