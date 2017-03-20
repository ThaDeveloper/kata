#persistence count

def persistence(n)
   count = 0
    loop do
      if n.to_s.length > 1
      array = n.to_s.split("").map(&:to_i)
      n = array. inject(&:*)
      count +=1
      break if n.to_s.length == 1
      else
        return count = 0
      end
      end
  return count
end

=begin
	
def persistence(n)
  n < 10 ? 0 : 1 + persistence(n.to_s.chars.map(&:to_i).reduce(:*))
end

def persistence(num)
  if num < 10 then
    return 0
  else
    return 1 + persistence(num.to_s.chars.inject(1) { |n,c| n * c.to_i })
  end
end

=end 
	
