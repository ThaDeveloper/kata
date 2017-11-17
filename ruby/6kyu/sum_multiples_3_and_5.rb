#sum of multiples of 3 and 5

def solution(number)
  sum = 0
    for i in 3...number do
     if i % 3 == 0 or i % 5 == 0 
       sum +=i
    end
  end
   return sum
end
=begin
#new method
def solution(number)
  (1...number).select {|i| i%3==0 || i%5==0}.inject(:+)
end

def solution(number)
  (1...number).select{|n| (n % 5).zero? || (n % 3).zero?}.reduce(:+)
end
=end