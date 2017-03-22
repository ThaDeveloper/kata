#break camelCaseTest to 'camel Case Test'
def solution(string)
#string.split /(?=[A-Z])/
 #string.sub /(?=[A-Z])/, ' '
 string.gsub(/[A-Z]/, ' \0')
end


=begin
def solution(string)
  string.gsub /([A-Z])/, ' \1'
end
	
def solution(string)
  string.gsub(/(?=[A-Z])/, ' ')
end

def solution(string)
  string.split(/(?=[A-Z])/).join ' '
end
=end