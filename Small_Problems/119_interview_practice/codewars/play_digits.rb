# play_digits.rb


=begin

89 --> 8¹ + 9² = 89 * 1
695 --> 6² + 9³ + 5⁴= 1390 = 695 * 2
46288 --> 4³ + 6⁴+ 2⁵ + 8⁶ + 8⁷ = 2360688 = 46288 * 51

Given two positive integers n and p, we want to find a positive integer k, if it exists, 
such that the sum of the digits of n raised to consecutive powers starting from p is equal to k * n.

PROBLEM:
input: integer
output: k, which is the integer that argued integer is multiplied by which equals sum of the powers

EXAMPLES:
p dig_pow(89, 1) == 1
p dig_pow(92, 1) == -1
p dig_pow(46288, 3) == 51

DATA STRUCTURE:


ALGORITHM:
- convert the 1st argued integer to a string
- initialize sum variable at 0
- iterate through the characters in the string number
  - convert the digit to an integer
  - raise the integer to the 2nd argued integer power & add to sum
  - iterate the second integer by 1

- return the sum / argued 1st num

=end

def dig_pow(num1, num2)
  sum = 0
  str_num = num1.to_s
  str_num.each_char do |digit|
    sum += (digit.to_i ** num2)
    num2 += 1
  end
  k = sum / num1
  if sum % num1 == 0
    k
  else
    -1
  end
end


p dig_pow(89, 1) == 1
p dig_pow(92, 1) == -1
p dig_pow(46288, 3) == 51