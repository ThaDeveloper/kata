def is_isogram(text)
   ("a".."z").all?{|c| text.downcase.count(c) <= 1}
end

=begin
#new method

def is_isogram(string)
  string.downcase.chars.uniq == string.downcase.chars
end

#new method

def is_isogram(string)
  string.downcase.chars.uniq.size == string.chars.size
end

def is_isogram(string)
  !string.downcase.split("").uniq!
end
