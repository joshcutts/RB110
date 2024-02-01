=begin

Write a method that takes an Array of numbers, 
and returns an Array with the same number of elements, 
and each element has the running total from the original Array.

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

=end

=begin

PROBLEM:
input: array of integers
output: new array of integers, where each element is replaced by the sum of the elements 
up to that index from the original array

EXAMPLES:
running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []

DATA STRUCTURE:
iterating over orginal array
returning a new array

ALGORITHM:
- initialize a sum variable at 0
- iterate through the array and add the current element to the sum, add the new sum to new array
- return the new array

=end

# def running_total(arr)
#   sum = 0
#   arr.map {|num| sum += num}
# end

# def running_total(arr)
#   sum = 0
#   arr.each_with_object([]) {|n, arr| arr << sum += n}
# end

def running_total(arr)
  sum = 0
  arr.inject([]) do |arr, num|
    sum += num
    arr << sum
  end
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []