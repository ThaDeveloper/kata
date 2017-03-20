def row_sum_odd_numbers(n)
return n*n*n
end

=begin
#newmethod
def row_sum_odd_numbers(n)
   start = n * n - n + 1 
  finish = start + 2 * n
  (start...finish).step(2).reduce(:+)
end
=end