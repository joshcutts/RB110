# digit_list.rb

=begin

PROBLEM:
input - positive integer
output - array of the digits in the integer

explicit - 
implicit - 

=end

def digit_list(int)
  int.digits.reverse
end

p digit_list(12345) == [1, 2, 3, 4, 5]     # => true
p digit_list(7) == [7]                     # => true
p digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
p digit_list(444) == [4, 4, 4]             # => true