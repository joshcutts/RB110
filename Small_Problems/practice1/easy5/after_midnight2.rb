=begin

As seen in the previous exercise, the time of day can be represented as the number 
of minutes before or after midnight. If the number of minutes is positive, 
the time is after midnight. If the number of minutes is negative, the time is before midnight.

Write two methods that each take a time of day in 24 hour format, 
and return the number of minutes before and after midnight, respectively. 
Both methods should return a value in the range 0..1439.

You may not use ruby's Date and Time methods.

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0


=end


=begin

PROBLEM:
input: string representation of time before or after midnight
output: time before or after midnight (2 methods)

EXAMPLES:
after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

DATA STRUCTURE:


ALGORITHM:
after midnight:
- split the string into hours and minutes on the ":"
- if hours is equal to 24 or 0, hours is 0
- if minutes is equal to 0, minutes is 0
- convert hours to minutes by multiplying hours * 60
- add minutes and converted hours together and return

before midnight:
- split the string into hours and minutes on the ":"
- calculate hours in minutes by subtracting 24 - hours and multiplying result by 60
- calculate minutes by subtracting from 60
- add the two together

=end

def after_midnight(str)
  hours, minutes = str.split(":").map(&:to_i)
  hours -= 24 if hours == 24
  hours_to_min = hours * 60
  hours_to_min + minutes
end

def before_midnight(str)
  hours, minutes = str.split(":").map(&:to_i)
  if hours == 0 || hours == 24
    hours_to_min = 0
  else
    hours_to_min = (24-hours) * 60
  end
  hours_to_min - minutes
end


p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0

