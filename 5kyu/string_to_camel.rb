#https://www.codewars.com/kata/517abf86da9663f1d2000003/solutions/ruby
def to_camel_case(str)
 str.gsub(/[-_](.)/){$1.upcase}
   
end

=begin
	
rescue Exception => e
	
end

def to_camel_case(str)
  str.gsub('_','-').split('-').each_with_index.map{ |x,i| i == 0 ? x : x.capitalize }.join
end

def to_camel_case(str)
  head, *tail = str.split(/[-_]/)
  head.to_s + tail.map(&:capitalize).join
end

def to_camel_case(str)
  str.gsub(/([\-_][a-zA-Z])/) do |m|
   m[1].upcase
  end
end

=end