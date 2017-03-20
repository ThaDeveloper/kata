=begin
INSTRUCTIONS FOR CHALLENGE:

You have to create a method that corrects a given time string.
There was a problem in addition, so many of the time strings are broken.
Time format is European, so from "00:00:00" to "23:59:59". 

Some examples:

"09:10:01" -> "09:10:01"
"11:70:10" -> "12:10:10"
"19:99:99" -> "20:40:39"
"24:01:01" -> "00:01:01"

If the input-string is null or empty return exactly this value!
If the time-string-format is invalid, return null.
=end

def timeCorrect(timestring) 
  
  # Create function to pad number to two digits if necessary
 def pad(number)
    return number < 10 ? "0" : "" + number
  end

  
 # If timestring is null or empty, return exactly that
  if timestring == nil || timestring == ""
    return timestring
   else 
  
    # Split string into separate variables for hours, minutes, and seconds
    arr = timestring.split(":")
    i = 0
    #p arr
  
   # Test if any item in array has non-number characters; if so, null
    while i < arr.length do 
      if (arr[i].is_a? Integer) == FALSE
        return nil
      
      # Test if bad timestring format resulted in an array
      # with fewer than three items; if so, null
     
      elsif arr.length < 3 
          return nil
          
      # If we have passed all tests so far, we have a valid timestring!
      else 
       
      #Convert each item in the array to an integer
      #arr = arr.map(&:to_s)
        hours = arr[0].to_i
       minutes = arr[1].to_i
        seconds = arr[2].to_i
      
        # Make sure seconds are right
        if seconds < 60
          seconds += 0
        else 
          seconds -= 60
          minutes += 1
        end
        #Make sure minutes are right
        if minutes < 60
          minutes += 0
        else 
          minutes -= 60
          hours += 1
        end
  
        #Make sure hours are right
          if hours < 24 
          hours += 0
          else
            while hours >= 24 
              hours -= 24
            end
          end
          
 
      #Run "pad2" function on each section and stick them together
      return pad(hours) + ":" + pad(minutes) + ":" + pad(seconds)
    
      end # this ends the second "else" statement (line 22)
    end # this ends the first "for" loop (line 17)
  end # this ends the first "else" statement (line 11)
end #this ends the whole function
timeCorrect("19:09:09")

=begin
def time_correct(t)  
  return t if t.nil? || t.empty?
  return unless t =~ /^\d{2}(:\d{2}){2}$/
  t = t.split(":").map(&:to_i)
  Time.at(t[0] * 3600 + t[1] * 60 + t[2]).strftime "%H:%M:%S"
end

#NEW method
def time_correct(t)
  if (t == nil || (!(t =~ (/^\d{2}:\d{2}:\d{2}$/)) && t != "" ))
    return nil
  elsif (t == "")
    return t
  else
    hours, minutes, seconds = t.split(":")
  end

  while seconds.to_i >= 60
    seconds = seconds.to_i - 60
    minutes = minutes.to_i + 1
  end

  while minutes.to_i >= 60
    minutes = minutes.to_i - 60
    hours = hours.to_i + 1
  end

  while hours.to_i > 24
    hours = hours.to_i - 24
  end
  
  if hours == "24"
    hours = "00"
  end  

  if !(/\A\d{2}/ =~ seconds.to_s)
    seconds = "0#{seconds}"
  end

  if !(/\d{2}/ =~ minutes.to_s)
    minutes = "0#{minutes}"
  end
  
  if !(/\A\d{2}/ =~ hours.to_s)
    puts true
    hours = "0#{hours}"
  end

  time = "#{hours}:#{minutes}:#{seconds}"
end

#new method

def time_correct(time)
  return "" if time.is_a?(String) && time.length.zero?
  match = time.to_s.match(/^(\d{2}):(\d{2}):(\d{2})$/)
  return unless match
  h,m,s = match[1..-1].map(&:to_i)
  m += s / 60
  h += m / 60
  s = s % 60
  m = m % 60
  h = h % 24
  [h,m,s].map { |t| t.to_s.length == 1 ? '0' + t.to_s : t.to_s}.join(':')
end

=end