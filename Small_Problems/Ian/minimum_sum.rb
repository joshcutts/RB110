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
input: array
output: minimum integer sum of 5 consecutive numbers in the array
if less than 5 numbers in the array, return nil

EXAMPLES:

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

DATA STRUCTURE:

High Level:
create all the sums of subarrays of 5 elements
find the minumum


ALGORITHM:
- return nil if length of array is less than 5
- create all the length five subarrays from the array
- create new array that is sum of all the subarrays
- return the minumum from the new array (sum of all sum arrays, array)

=end

def minimum_sum(arr)
  return nil if arr.length < 5
  subarrays = []
  start_index = 0
  loop do
    subarrays << arr[start_index, 5]
    start_index += 1
    break if start_index + 5 > arr.length
  end
  subarray_sums = subarrays.map {|subarr| subarr.sum}
  subarray_sums.min
end

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10


def array_diff(array1, array2)
  return array1 if array1.empty? || array2.empty?
  array1.each do |element|
    p "array1 element #{element}"
      array2.each do |element2|
        array1.delete(element) if element == element2
      end
    end
    array1
  end