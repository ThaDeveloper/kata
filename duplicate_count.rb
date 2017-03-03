=begin
def duplicate_count(text)
    

    array = text.downcase.split(//)
    
     hash = Hash.new(0)

# iterate over the array, counting duplicate entries
count = 0
array.each do |v|
  hash[v] += 1
end

hash.each do |k, v|
  
  count +=1 if v>1
  
end
 count
      
    
end
=end
def duplicate_count(text) 
  arr = text.downcase.split("") 
  arr.uniq.count { |n| arr.count(n) > 1 } 
  
  
  
  end

