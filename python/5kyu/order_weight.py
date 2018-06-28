"56 65 74 100 99 68 86 180 90 ordered by numbers weights becomes: 100 180 90 56 65 74 68 86 99"
#Clever #best practice
def weight(string):
    return " ".join([x for _,x in sorted(zip([sum([int(char)\
     for char in str(n)]) for n in string.split(" ")],string.split(" ")))])

#Clever 
def order_weight(_str):
    return ' '.join(sorted(sorted(_str.split(' ')), key=lambda \
    x: sum(int(c) for c in x)))