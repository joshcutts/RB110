# sum_of_digits.rb

=begin

Write a method that takes one argument, a positive integer, and returns the sum of its digits.

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

PROBLEM:
input: integer
output: sum of the digits of the argued integer

EXAMPLES:
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

DATA STRUCTURE:
array of the digits

ALGORITHM


=end

def sum(num)
  num.digits.sum
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45