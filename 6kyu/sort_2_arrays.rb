#sort 2 arrays

def same(arr_a, arr_b)
  arr_a.flatten.sort == arr_b.flatten.sort ? true: false
end

=begin
def same(arr_a, arr_b)
  arr_a.map(&:sort).sort == arr_b.map(&:sort).sort
end
=end