=begin
Write a method that takes a year as input and returns the century. 
The return value should be a string that begins with the century number, 
and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01.
So, the years 1901-2000 comprise the 20th century.

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

=end

=begin

PROBLEM:
input: integer, year
output: string; century 
with approriate "st", "nd", "rd", "th"

1st
2nd
3rd
4th
5th
11th
12th
13th
14th
15th
21st
22nd
23rd

1801-1900 == "19th"
1901-2000 == "20th"

EXAMPLES:
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

divide by 10 and round up


DATA STRUCTURE:
if conditional flow

ALGORITHM:
- calculate the century by dividing the given year (float) by 100 and rounding up (ceil)
- append the appropriate suffix
  - if its between 11-13, convert to string and add "th" and return
  - otherwise if it ends in 1, add "st" and return
  - otherwise if it ends in 2, add "nd" and return
  - otherwise if it ends in 3, add "rd" and return
  - otherwise add "th" and return

=end

def century(year)
  cent = ((year.to_f/100).ceil).to_s

  suffix = if cent.end_with?("11") || cent.end_with?("12") || cent.end_with?("13")
    "th"
  elsif cent.end_with?("1")
    "st"
  elsif cent.end_with?("2")
    "nd"
  elsif cent.end_with?("3")
    "rd"
  else
    "th"
  end
  cent + suffix
end


p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'

# p (2000/100).ceil
# p (2001.0/100).ceil
# p (1965.0/100).ceil
# p (256.0/100).ceil