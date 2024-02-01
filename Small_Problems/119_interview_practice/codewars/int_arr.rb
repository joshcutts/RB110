# int_arr.rb

=begin

returns true  / True if every element in an array is an integer or a float with no decimals.
returns true  / True if array is empty.
returns false / False for every other input.

PROBLEM:
input: array of mixed type
output: true if every element in array is an integer or float with no decimals
false otherwise

EXAMPLES:
p is_int_array([]) == true
p is_int_array([1, 2, 3, 4]) == true
p is_int_array([-11, -12, -13, -14]) == true
p is_int_array([1.0, 2.0, 3.0]) == true
p is_int_array([1, 2, nil]) == false
p is_int_array(nil) == false
p is_int_array("") == false
p is_int_array([nil]) == false
p is_int_array([1.0, 2.0, 3.0001]) == false
p is_int_array(["-1"]) == false


DATA STRUCTURE:


ALGORITHM:
- if all elements of the array of the same when converted to an integer and to float, return true
- return false

=end

def is_int_array(arr)
  return false if arr.class != Array
  return true if arr.all? {|x| x.to_i.to_f == x || x.to_i == x}
  false
end

p is_int_array([]) == true
p is_int_array([1, 2, 3, 4]) == true
p is_int_array([-11, -12, -13, -14]) == true
p is_int_array([1.0, 2.0, 3.0]) == true
p is_int_array([1, 2, nil]) == false
p is_int_array(nil) == false
p is_int_array("") == false
p is_int_array([nil]) == false
p is_int_array([1.0, 2.0, 3.0001]) == false
p is_int_array(["-1"]) == false

