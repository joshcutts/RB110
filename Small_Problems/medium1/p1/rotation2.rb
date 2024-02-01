#rotation2.rb

def rotate_array(array)
  array.slice(1..-1).concat(array[0])
end

=begin

PROBLEM:
rotate the last (n) digits of a number
input: integer
output: integer with the last (n) digits rotated
-> rotated here means taking the 1st of the (n) digits from the end of the integer
-> and moving it to the END of the integer, moving the other integers forward by 1 position

explicit:
implcit:

EXAMPLES:

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

DATA STRUCTURE:
arrays

ALGORITHM
- convert the integer to a string
- slice the string from 0 to -n -> this forms the 1st part of the new string
- take the slice from -n to end of the string, use rotate_array method to rotate string appropriately
- add the 2 pieces together
- convert the string back to integer

=end

def rotate_rightmost_digits(int, n)
  string_int = int.to_s
  first_half = string_int[0..(-n-1)]
  second_half = rotate_array(string_int[(-n)..-1])
  (first_half + second_half).to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
