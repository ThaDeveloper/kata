
=begin
1/4, 2/5     13/20
1/3,2/4       5/6
1/2, 2/3      7/6


2 13/20 = 53/20
=end

#p Rational(x,y)
def game(n)
 
  sum = 0
    x = 0
     y = 1
    if n <0
      return NIL
      
    else
    for i in 1..n
    
     x +=1
     y += 1
    sum += x/y.to_r
    end
    
     x = 0
     y = 2
    for i in 1..n
      y +=1
      x += 1
      sum += x/y.to_r
      
    end
  end
 return sum.to_s.split("/").map(&:to_i)
end
game(2)







