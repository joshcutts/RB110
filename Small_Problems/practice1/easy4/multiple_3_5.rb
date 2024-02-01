=begin


Write a method that searches for all multiples of 3 or 5 
that lie between 1 and some other number, 
and then computes the sum of those multiples. 
For instance, if the supplied number is 20, 
the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.


multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

=end

=begin

PROBLEM:
input: integer
output: integer, sum of all multiples of 3 or 5

EXAMPLES:

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

DATA STRUCTURE:
array to hold the multiples of 3 or 5

ALGORITHM:
- create an array using a range from 1 to given integer
- iterate through the array and select it to a new array if it is evenly divisible by 3 or 5
- take the sum of the new factors array and return it

=end

def multisum(n)
  (1..n).select {|num| num % 3 == 0 || num % 5 == 0}.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168