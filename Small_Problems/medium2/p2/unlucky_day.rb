# unlucky_day.rb

=begin

Write a method that returns the number of Friday the 13ths in the year given 
by an argument. You may assume that the year is greater than 1752 (when the 
United Kingdom adopted the modern Gregorian Calendar) and that it will remain in 
use for the foreseeable future.


PROBLEM:
input: integer, year
output: number of fridays that are the 13th day of the month

EXAMPLES:
friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2

DATA STRUCTURE:

ALGORITHM:


=end

require "Date"


def friday_13th(year)
  count = 0
  start = Date.new(year, 1, 1)
  last = Date.new(year, 12, 31)

  (start..last).each do |date|
    count += 1 if date.friday? && date.day == 13
  end
  count
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2