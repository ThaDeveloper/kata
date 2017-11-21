#should return double_char("String") ==> "SSttrriinngg"
#clever
def double_char(s):
    return ''.join(c * 2 for c in s)