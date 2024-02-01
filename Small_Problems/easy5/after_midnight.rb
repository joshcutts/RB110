# after_midnight.rb

=begin

PROBLEM:
input: positive or negative integer in minutes
output: the time from midnight - positive = after midnight. negative = before midnight


EXAMPLES:
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

DATA STRUCTURE:



ALGORITHM:
Determine number of hours from midnight by dividing the number of minutes by 60
Take the remainder of the hours division as the number of minutes
format the hours so preceding 0 shows up if hours < 10
format minutes the same as hours
for positive input integers
  - append the hours and minutes together for output
for negative input integers
  - subtract hrs from 24 and minutes from 60


=end

def time_of_day(minutes)
  hours, minutes = minutes.divmod(60)
  if hours >= 0
    hours = hours % 24
  else
    hours = (24 + hours) % 24
  end

  format_hours = format("%.2d", hours)
  format_minutes = format("%.2d", minutes)
  "#{format_hours}:#{format_minutes}"
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
