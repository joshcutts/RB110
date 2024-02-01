# featured.rb

=begin

A featured number (something unique to this exercise) is an odd number that is a 
multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a 
featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), 
and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next 
featured number that is greater than the argument. Return an error message if there 
is no next featured number.

PROBLEM:
input: integer
output: new integer, which is the next 'featured integer' or error if there is not a featured num

featured integer is an 
1) odd number
2) multiple of 7
3) digits of the number are all unique

EXAMPLES:
featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

DATA STRUCTURE:


ALGORITHM:
- starting at the argued integer
  - add one to the agued integer
  - test if if the number is a featured number
    - odd
    - multiple of 7
    - digits are all unique
  - if it is return the number
  - exit the loop if iterating number exceeds 9876543210 & return error


=end

def featured(n)
  num = n
  loop do
    num += 1
    if num.odd? && num % 7 == 0 && num.digits.uniq == num.digits
      return num
    end
    break if num > 9876543210
  end
  "error"
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements