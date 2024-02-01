=begin

Given an integer n, find the maximal number you can obtain by deleting 
exactly one digit of the given number.

Example
For n = 152, the output should be 52;

For n = 1001, the output should be 101.

Input/Output
[input] integer n

Constraints: 10 ≤ n ≤ 1000000.

[output] an integer

PROBLEM:
input: integer
output: next highest integer with 1 digit removed

EXAMPLES:
p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(10) == 1

DATA STRUCTURE:


ALGORITHM:
- create an empty array to hold the new deleted numbers
- convert the integer to a string
- split the string into an array of characters
- iterate through the characters
  - slice the str num without the current index
  - add deleted number to array
- select the biggest number in the array & return it

=end

# def delete_digit(num)
#   result = []
#   str_num = num.to_s
#   (0..str_num.length-1).each do |i|
#     if i == 0
#       result << str_num[1..-1]
#     else
#       result << str_num[0..i-1] + str_num[i+1..-1]
#     end
#   end
#   result.map(&:to_i).max
# end

def delete_digit(num)
  result = []
  str_num = num.to_s
  (0...str_num.length).each do |i|
    result << str_num[0...i] + str_num[i+1..-1]
  end
  result
end

p delete_digit(152) #== 52
p delete_digit(1001) #== 101
p delete_digit(10) #== 1