=begin

The time of day can be represented as the number of minutes before or after midnight. 
If the number of minutes is positive, the time is after midnight. 
If the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format 
and returns the time of day in 24 hour format (hh:mm). 
Your method should work with any integer input.

You may not use ruby's Date and Time classes.


time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

=end

=begin

PROBLEM:
input: integer (can be postive or negative)
output: string representation of time before or after midnight

EXAMPLES:
time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

DATA STRUCTURE:

can use divmod(60) to get hours and minutes
should probalby separate the before & after calculations

ALGORITHM
- if minutes is >= 0
  - take minutes and divmod by 60 for hours and minutes
  - use string formating to get length 2 characters even for times 
  that are only 1 digit long for hours & minutes variables
  - use interpolation to output the time representation as a string
- if minutes < 0
  - multiply the number by -1 to get a positive number for hours and minutes
  - use divmod to get hours and minutes variables
  - update hours and minutes by subtracting from 24 hrs and 60 min respectively
  - use string formatting to get the correct # of digits
  - use interpolation to output the time representation as a string

=end

MINUTES_IN_DAY = 24 * 60

def time_of_day(min)
  min = min % MINUTES_IN_DAY if min.abs > MINUTES_IN_DAY
  hours, minutes = min.divmod(60)
  if min >= 0
    "#{format("%.2d", hours)}:#{format("%.2d", minutes)}"
  else
    hours = (24 + hours)
    "#{format("%.2d", hours)}:#{format("%.2d", minutes)}"
  end
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"

