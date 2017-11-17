#best practice
def get_middle(s):
    length = len(s)
    if length%2 == 0:
        return s[(length//2)-1] + s[length//2]
    return s[(length//2)]

#clever
def get_middle(s):
     return s[(len(s)//2)-1] + s[len(s)//2] if len(s)%2 == 0\
     else s[(len(s)//2)]
#or simply
def get_middle(s):
   return s[(len(s)-1)//2:len(s)//2+1]