=begin

Write a method that takes a positive integer or zero, and converts it to a string representation.

integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

=end

=begin

PROBLEM:
input: integer
output: string representation of the integer

EXAMPLES:
integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'

DATA STRUCTURE:
hash to help convert each single digit integer to string representation
{0 => "0", 1 => "1", 2 => "2"...}

4321

p 4321/10 = 432
p 432/10 = 43
p 43/10 = 4 (< 10)
p 4/10 = 0

ALGORITHM:
- create empty array to hold the result
- create a hash with integers as keys and string representation as values
- use a loop to perform a division operation until num < 10
  - create a digit that is the remainder of dividing the number by 10
  - use the hash to convert the digit to a str representation & push that into beginning of array (unshift)
  - update number to be itself divided by 10
- return the string by joining the array together

=end

def integer_to_string(int)
  result = []
  nums = (0..9).to_a
  str_nums = ("0".."9").to_a
  nums_to_str_nums = nums.zip(str_nums).to_h

  loop do
    digit = int % 10
    result.unshift(nums_to_str_nums[digit])
    int /= 10
    break if int == 0
  end
  result.join
end


p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'