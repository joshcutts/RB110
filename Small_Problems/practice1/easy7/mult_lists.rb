=begin

Write a method that takes two Array arguments in which each Array contains a list of numbers, 
and returns a new Array that contains the product of each pair of numbers from the arguments 
that have the same index. You may assume that the arguments contain the same number of elements.



PROBLEM:
input:  arrys of integers
output: new array, product of each pair of numbers from the arguments with same index
assume each argued array has the same number of elements

EXAMPLES:
multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

DATA STRUCTURE:


ALGORITHM:
- create empty array to hold final result
- iterate through the arrays
- multiply the elements at the same index together and add to new array
- return the new array

=end


# def multiply_list(arr1, arr2)
#   result = []
#   (0..arr1.length-1).each {|i| result << arr1[i] * arr2[i] }
#   result
# end

# def multiply_list(arr1, arr2)
#   (0..arr1.length-1).each_with_object([]) do |i, arr|
#     arr << arr1[i] * arr2[i]
#   end
# end

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map {|subarr| subarr[0] * subarr[1]}
end


p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]


# p [3, 5, 7].product([9, 10, 11])