#int appearing odd number of times
def find_it(seq)
  counts = Hash.new 0
  seq.each do |int|
  counts[int] += 1
  end
  counts.each{|k,v|
    if v % 2 != 0
      return k
    end
    }
end
=begin
def find_it(seq)
  seq.detect { |n| seq.count(n).odd? }
end


def find_it(seq)
  seq.each do |i|
    if seq.count(i) % 2 != 0
      return i
    end
  end
end

def find_it(seq)
  seq.uniq.each do |val|
    return val if seq.count(val).odd?
  end
end

def find_it(seq)
  seq.find{|c| seq.count(c).odd? }
end
=end