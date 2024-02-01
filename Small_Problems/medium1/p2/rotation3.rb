=begin

PROBLEM:
input: integer
output: new integer, rotated max number of times

EXAMPLES:
max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

DATA STRUCTURE:

735291

[0, 0] + [0, 6]
352917

[0, 1] + [1, 5]
3 29175
329175

[0, 2] + [2, 4]
32 1759
321759

[0, 3] + [3, 3]
321 597
321597

[0, 4] + [4, 2]
3215 79
321579

[0, 0]
105
051

0 51
0 15

15

ALGORITHM:
- get string version of the integer
- slice first half and second half of the string version of integer
  - from 0 to length -2 
    - first half is a slice starting at index 0 and going up to current length iteration
    - second half is a slice starting at index length and going to length, string length - current length iteration
- rotate the second half and add to the first half
- return the integer version of the rotated string

=end

def max_rotation(num)
  str_num = num.to_s
  length = str_num.length - 2
  (0..length).each do |length|
    first_half, second_half = str_num[0, length], str_num[length, str_num.length - length]
    str_num = first_half + second_half[1..-1] + second_half[0]
  end
  str_num.to_i
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845