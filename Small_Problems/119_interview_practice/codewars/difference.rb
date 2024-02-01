# difference.rb


=begin

Your goal in this kata is to implement a difference function, which subtracts one list from another and returns the result.

It should remove all values from list a, which are present in list b keeping their order.


PROBLEM:
input: 2 arrays of integers
output: a new array, composed of elements from 1st array with elements from the 2nd array removed from it

EXAMPLES:
p array_diff([1,2], [1]) == [2] 
p array_diff([1,2,2], [1]) == [2,2]
p array_diff([1,2,2], [2]) == [1] 
p array_diff([1,2,2], []) == [1,2,2]
p array_diff([], [1,2]) == [] 
p array_diff([1,2,3], [1,2]) == [3]

DATA STRUCTURE:



ALGORITHM:
- iterate through the elements of array 1
  - if the element is present in array 2, do not select the element
- return the array



=end

def array_diff(arr1, arr2)
  arr1.reject do |ele|
    arr2.include?(ele)
  end
end


p array_diff([1,2], [1]) == [2] 
p array_diff([1,2,2], [1]) == [2,2]
p array_diff([1,2,2], [2]) == [1] 
p array_diff([1,2,2], []) == [1,2,2]
p array_diff([], [1,2]) == [] 
p array_diff([1,2,3], [1,2]) == [3]
