'''
Implement the function unique_in_order which takes as argument a sequence and returns a list of items without any
elements with the same value next to each other and preserving the original order of elements.
unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
unique_in_order([1,2,2,3,3])       == [1,2,3]
'''
#best practice
def unique_in_order(iterable):
 if len(iterable) == 0:
     return []
 else:
     result = [iterable[0]]
     for i in range(1,len(iterable)):
        if iterable[i] != iterable[i-1]:
          result.append(iterable[i])
     return result

#clever
def unique_in_order(iterable):
    r = []
    for x in iterable:
        x in r[::] or r.append(x)
    return r