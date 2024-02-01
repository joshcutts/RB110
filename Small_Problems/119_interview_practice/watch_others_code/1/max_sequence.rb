=begin

The maximum sum subarray problem consists in finding
the maximum sum of a contiguous subsequence in an array of integers

easy case is when the array is made up of only positive numbers
and the max sum is the sum of the whole array.
If the array is made up of only negative numbers, return 0
empty array is considered to have zero greatest sum. 
Empty array is valid subarray

PROBLEM:
input: array of integers
output: maximum sum of contiguous subsequences in an array of integers



EXAMPLES:
p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4])


DATA STRUCTURE:
[-2, 1, -3, 4, -1, 2, 1, -5, 4]
[-2]
[-2, 1]
[-2, 1, -3]
[-2, 1, -3, 4]

ALGORITHM:
- return 0 if array is empty or all integers are <0
- create array of all subarrays
- from array of subarrays, create an array of sums of those subarrays
- find the max & return it

=end

def max_sequence(array)
  return 0 if array.empty? || array.all? { |x| x<0 }
  subarrays = []
  (0..array.length-1).each do |start_index|
    max_length = array.length - start_index
    (1..max_length).each do |length|
      subarrays << array[start_index, length]
    end
  end
  subarrays.map(&:sum).max
end

p max_sequence([]) == 0
p max_sequence([-2, 1, -3, 4, -1, 2, 1, -5, 4]) == 6
p max_sequence([11]) == 11
p max_sequence([-32]) == 0
p max_sequence([-2, 1, -7, 4, -10, 2, 1, 5, 4]) == 12