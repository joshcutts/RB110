# double_doubles.rb

=begin


A double number is a number with an even number of digits whose 
left-side digits are exactly the same as its right-side digits. 
For example, 44, 3333, 103103, 7676 are all double numbers. 
444, 334433, and 107 are not.

Write a method that returns 2 times the number provided 
as an argument, unless the argument is a double number; 
double numbers should be returned as-is.

PROBLEM:
input: integer
output: integer
if the number is a double number, should return it as is
otherwise return 2 times the argued integer

EXAMPLES:
twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10

DATA STRUCTURE:

[0, length/2]
[(length/2)-1, length/2]
103103


7676

ALGORITHM:
- determine if the number is a double number
  - if the first half of the given integer is equal to the second half 
    then it is a double number
- if the number is a double number return it
- otherwise return 2x the given integer


=end

def twice(int)
  str_int = int.to_s
  mid = (str_int.length/2.0).round
  
  return 2 * int if int < 10
  
  # p str_int[0, mid]
  # p str_int[mid, mid]
  if str_int[0, mid] == str_int[mid, mid]
    int
  else
    int * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10