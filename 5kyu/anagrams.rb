def anagrams(word,words)
  result_array = []
   words.each{|a| if  a.chars.sort.join == word.chars.sort.join
   result_array << a 
  end
  }
  return result_array
end

=begin
def anagrams(word, words)
  words.select { |w| w.chars.sort == word.chars.sort }
end

=end