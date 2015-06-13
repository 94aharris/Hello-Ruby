#This program has known issues and is in progress of being fixed
#This program takes the time in format "12:30pm-12:00am" and returns the number of minutes between the two

def CountingMinutesI(str)
  str_arr = str.split('-')
  start_time = str_arr[0]
  if start_time.end_with?('pm')
  start_time = start_time.gsub('pm','')
    start_arr = start_time.split(':')
   start_hours = start_arr[0].to_i
    start_hours = start_hours + 12
    start_minutes = start_arr[1].to_i
    start_total = start_hours * 60 + start_minutes 
  else
    start_time = start_time.gsub('am','')
    start_arr = start_time.split(':')
    start_hours = start_arr[0].to_i
    start_minutes = start_arr[1].to_i
    start_total = start_hours * 60 + start_minutes
  end
  end_time = str_arr[1]
  if end_time.end_with?('pm')
    end_time = end_time.gsub('pm','')
    end_arr = end_time.split(':')
    end_hours = end_arr[0].to_i
    end_hours = end_hours + 12
    end_minutes = end_arr[1].to_i
    end_total = end_hours * 60 + end_minutes 
  else
    end_time = end_time.gsub('am','')
    end_arr = end_time.split(':')
    end_hours = end_arr[0].to_i
    end_minutes = end_arr[1].to_i
   end_total =  end_hours * 60 + start_minutes
  end
  minutes = end_total - start_total
  puts(minutes.abs)
  return minutes.abs
  
    
end
   
# keep this function call here 
# to see how to enter arguments in Ruby scroll down   
CountingMinutesI(STDIN.gets)  
