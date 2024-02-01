=begin

Write a method that can rotate the last n digits of a number. For example:

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

PROBLEM:
input: 2 integers
output: 1st argued integer with last n digits rotated

EXAMPLES:
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

DATA STRUCTURE:
735291, 2
735291 1 <=> 9
735219

235291, 3
235 912

ALGORITHM:
- split the string version of number into 2 halves, front half stays same, back half is rotated
- rotate the back half of the string version of the number by moving 1st digit to back
- add the two halves back together and convert back to an integer

=end

def rotate_rightmost_digits(int, n)
  str_int = int.to_s
  first_half, second_half = str_int[0..-n-1], str_int[-n..-1]

  result = first_half + second_half[1..-1] + second_half[0]
  result.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917