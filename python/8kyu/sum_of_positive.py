#You get an array of numbers, return the sum of all of the positives ones.array may be empty
#clever
def positive_sum(arr):
    return sum(i for i in arr if i>0)
#best practice
def positive_sum(arr):
    sum = 0
    for n in arr:
      sum += n if n > 0 else 0
    return sum
