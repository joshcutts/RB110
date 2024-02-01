=begin

Write a method named include? that takes an Array and a search value as arguments.
This method should return true if the search value is in the array, false 
if it is not. You may not use the Array#include? method in your solution.

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

=end

=begin

PROBLEM:
input: array & integer
output: boolean, true if ineer is presnet in array and false otherwise

EXAMPLES:
include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false

DATA STRUCTURE:

ALGORITHM:
- iterate through the array
  - return true if any element is equal to search term
return false
=end

def include?(arr, search)
  arr.each {|ele| return true if ele == search}
  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false