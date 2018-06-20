
"""A digital root is the recursive sum of all the digits in a number."""
#best practice
def digital_root(n):
      while len(str(n)) > 1:
    n=sum([int(i) for i in str(n)])
  return n

#celever
def digital_root(n):
    return 1 + ((int(n) - 1) % 9) if n>0 else 0

def digital_root(n):
    return n if n < 10 else digital_root(sum(map(int,str(n))))
    
#cleverer
def digital_root(n):
  return n%9 or n and 9 

