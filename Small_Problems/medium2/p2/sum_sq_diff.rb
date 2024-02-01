# sum_square_difference.rb

=begin

Write a method that computes the difference between the square of the sum of the 
first n positive integers and the sum of the squares of the first n positive 
integers.

sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

PROBLEM:
input: integer
output: integer which is the difference between the square of the sum 
of the firs n positive integers & the sum of the squares of the first n pos ints

EXAMPLES:
sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

DATA STRUCTURE:


ALGORITHM:
- calculate the square of the sum of the first n digits
- calculate the sum of the squares of each of the first n digits
- subtract squares sum from squares of sum & return


=end

def sum_square_difference(n)
  ((1..n).sum ** 2) - (1..n).map {|x| x ** 2}.sum
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150