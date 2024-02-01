=begin

Write a method that takes two Array arguments in which each Array contains a list of numbers, 
and returns a new Array that contains the product of every pair of numbers that can be formed 
between the elements of the two Arrays. The results should be sorted by increasing value.

You may assume that neither argument is an empty Array.


PROBLEM:
input: 2 arrays of integers
output: new array, product of every pair of numbers that can be formed between the elements of the 2 arrays
results should be sorted by increasing values

assume that neither argued array is empty

EXAMPLES:
multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

=end


def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map {|subarr| subarr.inject(:*)}.sort
end

# p [2, 4].product([4, 3, 1, 2]).map {|subarr| subarr.inject(:*)}.sort

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]