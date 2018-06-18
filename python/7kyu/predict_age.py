# Take a list of ages when each of your great-grandparent died.
# Multiply each number by itself.
# Add them all together.
# Take the square root of the result.
# Divide by two.
import math
def predict_age(*args):
  return math.sqrt(sum(x*x for x in args))//2

#or simply

def predict_age(*ages):
    return sum(a*a for a in ages)**.5//2