# subarray_odd_number_odd_numbers.rb

=begin

Implement a function which takes an array of nonnegative integers and returns the number of subarrays with an odd number of odd numbers. 
Note, a subarray is a contiguous subsequence.

input
[1, 2, 3, 4, 5]

output arrays
[1, 2, 3, 4, 5], [2, 3, 4], [1, 2], [2, 3], [3, 4], [4, 5], [1], [3], [5]


count == 9

p odd_number_odd_numbers([]) == 0
p odd_number_odd_numbers([0]) == 0
p odd_number_odd_numbers([1]) == 1
p odd_number_odd_numbers([1, 1]) == 2
p odd_number_odd_numbers([2, 2]) == 0
p odd_number_odd_numbers([1, 1, 1]) == 4
p odd_number_odd_numbers([2, 1, 1]) == 3
p odd_number_odd_numbers([1, 2, 1]) == 4
p odd_number_odd_numbers([1, 1, 1, 1]) == 6
p odd_number_odd_numbers([1, 2, 1, 2, 1]) == 9
p odd_number_odd_numbers([1, 2, 3, 3, 2, 1]) == 12
p odd_number_odd_numbers([2, 3, 5, 5, 6, 8, 9, 1]) == 20


PROBLEM:
input: array of integers
output: integer count of subarrays that have:
1) at least 1 odd integer
2) an odd number of elements

implicit: all non-negative integers

EXAMPLES:
input
[1, 2, 3, 4, 5]

output arrays
[1, 2, 3, 4, 5], [2, 3, 4], [1, 2], [2, 3], [3, 4], [4, 5], [1], [3], [5]

DATA STRUCTURE:


ALGORITHM:
- generate all subarrays of at least 1 element in length
- select subarrays that have at least 1 odd element
- select subarrays (from above) that have odd # of elements
return the count of the selected subarrays

generate_subarrays ALGO
- create empty subarrays array to hold all subarrays
- iterate from 0 to the last element of array for start index (outer loop)
  - generate the max of the range of lengths by subtracting the length of array from the current start_index
  - use range 1 - current max length to iterate through
  - push each subarray to the subarrays array
- return the subarrays, array
=end

def generate_subarrays(array)
  subarrays = []
  (0..array.length-1).each do |start_index|
    max_length = array.length - start_index
    (1..max_length).each do |length|
      subarrays << array[start_index, length]
    end
  end
  subarrays
end

# p generate_subarrays([1, 2, 3, 4, 5])

def odd_number_odd_numbers(array)
  subarrays = generate_subarrays(array)
  subarrays.select do |subarray|
    subarray.any? {|element| element.odd? } && subarray.select {|num| num.odd?}.length.odd?
  end.length
end
# p generate_subarrays([1, 2, 1])

p odd_number_odd_numbers([]) == 0
p odd_number_odd_numbers([0]) == 0
p odd_number_odd_numbers([1]) == 1
p odd_number_odd_numbers([1, 1]) == 2
p odd_number_odd_numbers([2, 2]) == 0
p odd_number_odd_numbers([1, 1, 1]) == 4
p odd_number_odd_numbers([2, 1, 1]) == 3
p odd_number_odd_numbers([1, 2, 1]) == 4
p odd_number_odd_numbers([1, 1, 1, 1]) == 6
p odd_number_odd_numbers([1, 2, 3, 4, 5]) == 9
p odd_number_odd_numbers([1, 2, 1, 2, 1]) == 9
p odd_number_odd_numbers([1, 2, 3, 3, 2, 1]) == 12
p odd_number_odd_numbers([2, 3, 5, 5, 6, 8, 9, 1]) == 20