=begin

Write a method that takes a floating point number that represents 
an angle between 0 and 360 degrees and returns a String that represents 
that angle in degrees, minutes and seconds. You should use a degree 
symbol (°) to represent degrees, a single quote (') to represent minutes, 
and a double quote (") to represent seconds. A degree has 60 minutes, 
while a minute has 60 seconds.

p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

=end

=begin

PROBLEM:
input: float
output: an angle between 0 & 360 in degrees, minutes & seconds

EXAMPLES:
p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

DATA STRUCTURE:
- the number before the decimal is simply degrees
- multiply the remaining decimal by 60 (0.73 * 60 = 43.8), the whole number 
before the decimal is minutes
- multiply the decimal by 60, this whole number is the second
- format and print the degrees, minutes, seconds

=end

DEGREE = "\xC2\xB0"
require 'bigdecimal'

def get_remainder(int)
  arr = BigDecimal(int.to_s).divmod(1)
  num, remainder = arr[0].to_i, arr[1].to_f
end

def dms(int)
  degrees, remainder = get_remainder(int)
  minutes, new_remainder = get_remainder(remainder*60)
  seconds = (new_remainder * 60).to_i
  "#{degrees}#{DEGREE}#{format("%.2d", minutes)}'#{format("%.2d", seconds)}\""
end



p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")


# p 0.73 /60
# p 0.216 * 60

# p 0.73 * 60
# p 0.8 * 60

