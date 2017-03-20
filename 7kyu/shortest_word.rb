=begin
def find_short(s)
   
  array = s.split(" ")
  short = array.min{|a,b| a.size <=> b.size }
  return l = short.length
end

def find_short(s)
    l = s.split.min_by(&:length).size
    return l
end

def find_short(s)
    l = s.split.min_by(&:length).size
    return l
end
=end

def find_short(s)
  return s.split(' ').map(&:length).min
end