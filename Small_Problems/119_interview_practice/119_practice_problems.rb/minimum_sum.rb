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
output: minimum sum of 5 consecutive integers from the given array


EXAMPLES:
p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10


DATA STRUCTURES:
[1, 2, 3, 4, 5, 6]

0, 5
1, 5

ALGORITHM:
- generate all substrings that are of length 5
  - start index, 0 to length - 5
- create new array of all the sums of 5 length arrays
- select the minimum sum


=end

def generate_length_five_substrings(array)
  subarrays = []
  (0..array.length-5).each do |start_index|
    subarrays << array[start_index, 5]
  end
  subarrays
end

def minimum_sum(array)
  return nil if array.length < 5
  substrings = generate_length_five_substrings(array)
  substring_sums = substrings.map(&:sum).min
end

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10