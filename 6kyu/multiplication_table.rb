=begin
multiplication_table(3,3)

1 2 3
2 4 6
3 6 9

-->[[1,2,3],[2,4,6],[3,6,9]]
=end
def multiplication_table(a,b)
  array = []
    for i in 1..a
     for j in 1..b
       array <<  j*i
      end
    end
    array.each_slice(b).to_a
end

=begin
	
def multiplication_table(r, c)
  (1..r).map { |i|
    (1..c).map { |j| i * j }
  }
end

def multiplication_table(n, m)
  (1..n).map{|a| (1..m).map{|b| a * b } }
end
	
=end