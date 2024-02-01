# delete_digit.rb

=begin

=begin
Given an integer n, find the maximal number you can obtain by deleting exactly one digit of the given number.

delete_digit(791983) == 91983
delete_digit(152) == 52
delete_digit(1001) == 101
delete_digit(10) == 1

Input: Integer
Output: Integer- Maximal number 

Rules:
Maximal number you can obtain by deleting exactly one digit of the given number
The output has one less digit than the input 
Output is maximum digit we can find that satisfies criteria
Digits must be in same order

High level:
Option 1- Remove each digit, add each number combo to an array, find the max of the Array

Data structure:
Array to store all the combinations of Digits
Integer to store the maximum of the digits

Algorithm:
Initializing a variable to store combos of digits
Iterate through each digit, remove it and create a new number add new number to array
  initialize altered string variable
  String version of integer, delete it at the index that we're iterating
Build up array of all the combinations
Find the maximum of the Array

Helper method max
Store maximum integer in a variable
Iterate through each item of the Array
If the item is bigger than max we're goign to reassing max
at the end return max variable

Return the maximum



def max(array)
  max_int = 0
  array.each do |num|
    num = num.to_i
    if num > max_int
      max_int = num
    end 
  end 
  max_int
end 

def delete_digit(integer)
  combos = []
  integer.to_s.chars.each_index do |digit, index|
    altered_string = integer.to_s
    altered_string[index] = ""
   combos.push(altered_string)
  end 
  max = max(combos)
end 

p delete_digit(791983) == 91983
p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(10) == 1

=end


=begin

EXAMPLES:
p delete_digit(791983) == 91983
p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(10) == 1
p delete_digit(1101)

NOT TRUE
noticing here that the largest number in these test cases can 
be achieved by removing the first character.
Unless there is a 0 in the number, then the 0 should be removed.

UPDATE
the first digit that is less than the following digit should be removed

ALGORITHM:
NOT CORRECT
- if there is a "0" in the number (string version)
  - remove the "0" and return the number
- otherwise remove the first number & return the new number

UPDATE
- turn integer into array of string digits
- iterate through the characters in the digit
- if the current digit is less than the next digit
  - take note of the index
- remove the digit at the index from above and return integer

=end

# def delete_digit(num)
#   if num.to_s.chars.include?("0")
#     string_num = num.to_s.chars
#     string_num.index("0")
#     string_num[1] = ""
#     string_num.join.to_i
#   else
#     num.to_s[1..-1].to_i
#   end
# end

def delete_digit(num)
  num_array = num.to_s.split("")
  index_to_remove = -1
  num_array.each_with_index do |digit, index|
    if digit.to_i < num_array[index+1].to_i
      index_to_remove = index
      break
    end
  end
  num_array.delete_at(index_to_remove)
  num_array.join.to_i
end

p delete_digit(791983) == 91983
p delete_digit(152) == 52
p delete_digit(1001) == 101
p delete_digit(10) == 1
p delete_digit(989083) == 99083