#email validate

def validate(email)
return /[a-zA-Z\-.]{2,}@[a-zA-Z\-]{1,}?\.[a-z]{2,3}/.match(email)? true: false
end

=begin
	
def validate(email)
  /^.+@.+\..+$/ === email 
end
	

def validate(email)
  !!(email =~ /^[\w\.\-]+@[\w\-]+(\.\w+)+$/)
end
=end