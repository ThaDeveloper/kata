def square_digits(num)
 num.to_s.split("").map{|i| i.to_i**2}.join.to_i
end