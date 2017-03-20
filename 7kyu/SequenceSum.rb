class SequenceSum
  def self.show_sequence(n)
   sum = 0
   add_string = []
   if n < 0
     return "-1<0"
  end
     for i in 0..n
         sum += i
    end
    for i in 1..n
        add_string << "+" + i.to_s
    end
    return sum == 0? "0" + add_string.join("")+"="+sum.to_s: "0" + add_string.join("")+" = "+sum.to_s
  end
end

=begin
#newmethod

class SequenceSum
  def self.show_sequence(n)
    n < 0 ? "#{n}<0" : [*(0..n)].join('+') << "#{ n.zero? ? '=0' : " = #{(n + 1) * n / 2}" }"
  end
end

class SequenceSum
  def self.show_sequence(n)
    case n <=> 0
    when -1 then "#{n}<0"
    when 0  then "#{n}=0"
    else         "#{(0..n).to_a.join('+')} = #{(0..n).reduce(:+)}"
    end 
  end
end

=end