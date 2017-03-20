
def partlist(arr)
  final = []
  for i in 1..arr.length-1
    a=arr.slice(0,i). join(" ")
    b = arr.drop(i).join(" ")
    final.push(a.concat(","+b).split(","))
  end
return final
end

=begin
def partlist(arr)
    (1...arr.size).map { |i|
      [arr.take(i).join(' '), arr.drop(i).join(' ')]
    }
end

def partlist(arr)
  (1...arr.size).map { |n| [arr.first(n).join(" "), arr.last(arr.size - n).join(" ")] }
end
=end