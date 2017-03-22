def comp(array1, array2)
 return true if array1 == [] && array2 == []
 if array1.empty? || array1.nil?
      false
 elsif
 array2.empty? || array2.nil?
      false
 else
     new_arr = 0
     array1.map{ |x| new_arr += x**2 }
     array2.reduce(&:+) == new_arr ? true : false
  end
end

=begin
def comp(array1, array2)
  array1.nil? || array2.nil? ? false : array1.sort.map {|v| v ** 2} == array2.sort
end


def comp(a, b)
  [a, b].none?(&:nil?) && a.map(&:abs2).sort == b.sort
end
=end