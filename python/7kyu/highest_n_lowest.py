"""
In this little assignment you are given a string 
of space separated numbers, and have to return
the highest and lowest number.
"""
#best practice
def high_and_low(numbers):
    lst =[int(d) for d in numbers.split()]
    return str(max(lst)) + " " + str(min(lst))
#clever
def high_and_low(numbers):
      return " ".join(x(numbers.split(), key=int) for x in (max, min))
