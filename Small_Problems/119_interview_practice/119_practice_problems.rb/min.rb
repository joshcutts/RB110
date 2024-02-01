# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

# Examples:

# p minimum_sum([1, 2, 3, 4]) == nil
# p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
# p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
# p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".

=begin

PROBLEM:
input: array of integers
output: minimum sum of 5 consecutive integers, from the argued array

EXAMPLES:
# p minimum_sum([1, 2, 3, 4]) == nil
# p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
# p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
# p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

DATA STRUCTURE:
array of subarrs that have 5 cons integers

ALGORITHM:
- return nil if the length of argued array is less than 5
- generate an array with subarrs of 5 consecutive integers
- find sums of subarrs and save to new array
- return the minimum sum of the subarrs of 5 consecutive integers

=end

def minimum_sum(arr)
  return nil if arr.length < 5
  subarrs = arr.each_cons(5).to_a
  subarrs.map(&:sum).min
end

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10


# p [1, 2, 3, 4].each_cons(5).to_a