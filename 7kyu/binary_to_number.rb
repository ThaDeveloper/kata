def binary_array_to_number(arr)
  lt = Hash.new { |h, i| h[i] = i.to_i(2) }
 lt[arr.join]
end
=begin
def binary_array_to_number(arr)
  arr.join("").to_i(2)
end

def binary_array_to_number(arr)
  Integer(arr.join, 2)
end
def binary_array_to_number(arr)
  arr.reduce(0) { |sum, n| 2*sum + n }
end

def binary_array_to_number(arr)
  return (arr * '').to_i(2)
end
=end
