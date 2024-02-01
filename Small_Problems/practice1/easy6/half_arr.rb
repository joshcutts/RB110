=begin

Write a method that takes an Array as an argument, 
and returns two Arrays (as a pair of nested Arrays) that contain the first half 
and second half of the original Array, respectively. If the original array contains 
an odd number of elements, the middle element should be placed in the first half Array.

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

=end

=begin

PROBLEM:
input: array
output: nested array with 2 subarrays
where the original array is split in half
first subarray contains the extra element if odd

EXAMPLES:
p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

DATA STRUCTURE:
arrays, and array slicing

ALGORITHM:
- create an empty array to hold the final result
- find half by taking length - 1 / 2
- add first slice to the array result
- add second slice to array result

=end

# def halvsies(arr)
#   return [[], []] if arr.empty?
#   half = (arr.length - 1)/2
#   [arr[0..half], arr[half+1..-1]]
# end

def halvsies(arr)
  half = (arr.length/2.0).ceil
  [arr[0, half], arr[half..-1]]
end

p halvsies([1, 2, 3, 4]) #== [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) #== [[1, 5, 2], [4, 3]]
p halvsies([5]) #== [[5], []]
p halvsies([]) #== [[], []]