"""return elements which are substring of second array"""
def in_array(a,b):
    arr = []
    for x in a:
        return [arr.append(x) for y in b if x in y and x not in arr]
    return sorted(arr)

#or simply best practice
def in_array(array1, array2):
    # your code
    return sorted(set([word for word in array1 for word_2 in array2 if word in word_2]))

#or clever
def in_array(a1, a2):
    return sorted(set(s1 for s1 in a1 if any(s1 in s2 for s2 in a2)))