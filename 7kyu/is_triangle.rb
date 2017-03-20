=begin
def isTriangle(a,b,c)
  sides = [a,b,c].sort
  sides[0] + sides[1] <= sides[2]? false : true
end

=end
def isTriangle(a,b,c)
   a + b > c && a + c > b && c + b > a
end
