# For "x", determine how many positive integers less than or equal to "x" are odd but not prime. Assume "x" is an integer between 1 and 10000.

# Example: 5 has three odd numbers (1,3,5) and only the number 1 is not prime, so the answer is 1
# Example: 10 has five odd numbers (1,3,5,7,9) and only 1 and 9 are not prime, so the answer is 2

# A prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.

# p odd_not_prime(15) == 3
# p odd_not_prime(48) == 10
# p odd_not_prime(82) == 20

=begin

PROBLEM:
input - integer
output - integer, # of integers <= input integer that are 
1) odd 
2) not prime

prime numbers have only 1 and itself as factors

EXAMPLES:
p odd_not_prime(15) == 3
p odd_not_prime(48) == 10
p odd_not_prime(82) == 20

DATA STRUCTURE:
odd: 1, 3, 5, 7, 9, 11, 13, 15
odd, not prime: 1, 9, 15

ALGORITHM:
- generate all odd integers from 1 to x, store in array
- if number is not prime iterate count
- return count

helper method is_prime? (x) as parameter
- if number is 1 return false
- create an empty array to hold factors
- iterate through the numbers 2 to x (don't include x)
- if x is evenly divisible by factor, add factor to array
- if array is empty, return true

=end

def is_prime?(num)
  return false if num == 1
  factors = []
  (2...num).each do |x|
    factors << x if num % x == 0
  end
  factors.empty?
end

def odd_not_prime(x)
  odd_nums = (1..x).select {|n| n.odd?}
  odd_nums.count {|n| !is_prime?(n)}
end

# p is_prime?(1)
# p is_prime?(2)
# p is_prime?(4)

p odd_not_prime(15) == 3
p odd_not_prime(48) == 10
p odd_not_prime(82) == 20