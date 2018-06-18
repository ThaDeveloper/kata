""" determine whether the numbers are in ascending order."""
def in_asc_order(arr):
    return True if sorted(arr) == arr else False

def in_asc_order(arr):
    return arr == sorted(arr)