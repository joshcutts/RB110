# sum_digits.rb

=begin

Digital root is the recursive sum of all the digits in a number.

Given n, take the sum of the digits of n. If that value has more than one digit, 
continue reducing in this way until a single-digit number is produced. The input will be a non-negative integer.


  16  -->  1 + 6 = 7
   942  -->  9 + 4 + 2 = 15  -->  1 + 5 = 6
132189  -->  1 + 3 + 2 + 1 + 8 + 9 = 24  -->  2 + 4 = 6
493193  -->  4 + 9 + 3 + 1 + 9 + 3 = 29  -->  2 + 9 = 11  -->  1 + 1 = 2


PROBLEM:
input: integer
output: integer which is the single digit reduction of the sum of digits of the number until < 10

EXAMPLES:
p digital_root(16) == 7
p digital_root(942) == 6
p digital_root(132189) == 6
p digital_root(493193) == 2


DATA STRUCTURE:
942  -->  9 + 4 + 2 = 15  -->  1 + 5 = 6


ALGORITHM:
- start a loop, while the number is > 10
  - split the number into digits, take the sum, and assign the value to num
- return the number




=end

def digital_root(num)
  while num > 10
    num = num.digits.sum
  end
  num
end

p digital_root(16) == 7
p digital_root(942) == 6
p digital_root(132189) == 6
p digital_root(493193) == 2

