# integers-recreation_one.rb

=begin

1, 246, 2, 123, 3, 82, 6, 41 are the divisors of number 246. Squaring these divisors we get: 1, 60516, 4, 15129, 9, 6724, 36, 1681. The sum of these squares is 84100 which is 290 * 290.

Task
Find all integers between m and n (m and n integers with 1 <= m <= n) such that the sum of their squared divisors is itself a square.

We will return an array of subarrays or of tuples (in C an array of Pair) or a string. The subarrays (or tuples or Pairs) will have two elements: first the number the squared divisors of which is a square and then the sum of the squared divisors.

Example:
p list_squared(1, 250) == [[1, 1], [42, 2500], [246, 84100]]
p list_squared(42, 250) == [[42, 2500], [246, 84100]]
p list_squared(250, 500) == [[287, 84100]]
p list_squared(431, 4722) == [[728, 722500], [1434, 2856100], [1673, 2856100], [1880, 4884100], [4264, 24304900]]

PROBLEM:
input range of integers (m & n)

output: subarrays (array of arrays) where index 1 is the integer at which the sqaured divisors sum is a perfect square & sum of squared divisors (perfect square)

EXAMPLES:
list_squared(1, 250) --> [[1, 1], [42, 2500], [246, 84100]]

246
divisors: 1, 246, 2, 123, 3, 82, 6, 41 [1, 2, 3, 6, 41, 82, 123, 246]
square of divisors 1, 60516, 4, 15129, 9, 6724, 36, 1681
sum of square of divisors = 84100
sqrt = 290

DATA STRUCTURE:
divisors into an array
square of divisors into an array

ALGORITHM:
- create an empty array to hold the results
- iterate from m to n
 - for each integer (from m to n) find integers that are factors of each integer
 - square the factors and take their sum
 - if the sqrt of this number is an integer
  - [current_number, sum of squared_factors] push to result array
- return the results array

find factors algo
- create factors array, emtpy
- iterate from 1 to number
- if the number is evenly divisible by the iterated_num, push that number to the factors array
- return the factors array

=end

def find_factors(num)
  factors = []
  (1..num).each do |n|
    factors << n if num % n == 0
  end
  factors
end

def list_squared(m, n)
  results = []
  (m..n).each do |num|
    factors = find_factors(num)
    squared_factors_sum = factors.map {|n| n**2}.sum
    putative_square = Math.sqrt(squared_factors_sum)
    if putative_square.to_i * putative_square.to_i == squared_factors_sum
      results << [num, squared_factors_sum]
    end
  end
  results
end

p list_squared(1, 250) == [[1, 1], [42, 2500], [246, 84100]]
p list_squared(42, 250) == [[42, 2500], [246, 84100]]
p list_squared(250, 500) == [[287, 84100]]
p list_squared(431, 4722) == [[728, 722500], [1434, 2856100], [1673, 2856100], [1880, 4884100], [4264, 24304900]]