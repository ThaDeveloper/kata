#A Rule of Divisibility by 7
def seven(m)
  result = []
  count = 0
  if m == 0
   nd = 0
  else
    array = m.to_s.split("").map(&:to_i)
    if array.length <= 2
      nd = m
    else
    while array.length > 2
      last = array.pop()
       first = array.join("").to_i
       nd = first - (last*2)
       count += 1
       if nd % 7 == 0 and nd.to_s.split("").length == 2
         break
       end
        array = nd.to_s.split("").map(&:to_i)
      
    end
  end
  end
  return result << nd << count
end

=begin
  
def seven(m, step=0)
    m < 100 ? [m,step] : seven(m/10-2*(m%10), step+1)    
end
  
def seven(z, times=0)
  if z < 100
    [z, times]
  else
    x, y = z.divmod 10
    z = x - 2 * y
    seven(z, times + 1) 
  end
end


def seven(m)
  i = 0
  while (m >= 100) do
    m = m/10 - (m%10)*2  
    i += 1
  end
  [m, i]
end