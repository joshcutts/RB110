# unlucky_day.rb

=begin

PROBLEM:
input: year
output: integer, number of Friday 13th in the year

=end

require "Date"

def friday_13th(year)
  year_start = Date.new(year, 1, 1)
  year_end = Date.new(year, 12, 31)
  counter = 0
  (year_start..year_end).each do |day|
    counter += 1 if day.mday == 13 && day.friday?
  end
  counter
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2