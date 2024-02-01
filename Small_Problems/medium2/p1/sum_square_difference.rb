# sum_square_difference.rb

=begin

PROBLEM:
input: integer
output: difference between square of num of first n integers & sum of squares of 1st n integers

(n..)**2 (n**2, n**2, n**2).sum

EXAMPLES:
sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

DATA STRUCTURE:


ALGORITHM:
- calculate the sum of 1..n and square it, store as variable
- map to create new array of squared numbers; take sum & store as variable
- calculate and return difference

=end

def sum_square_difference(num)
  squared_sum = (1..num).sum**2
  sum_of_squares = (1..num).map {|x| x**2}.sum
  squared_sum - sum_of_squares
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150