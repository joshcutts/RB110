# 2even_1odd.rb

=begin

PROBLEM: return count of subarrays that contain 2 even numbers and 1 odd number
input: array of integers
output: count of sub arrays with 2 even & 1 odd number from the given array

EXAMPLES:
p two_even_one_odd([1, 2, 3, 4]) == 2

DATA STRUCTURE:
[1, 3]
[2, 4]

ALGORITHM:
- generate empty array to hold 2 even and 1 odd integer, subarrays
- generate array of even integers and array of odd integers
- use the even integer array as the outer loop, iterate through the even integer array 2 elements at a time
  - create an empty array to populate with 2 even & 1 odd integer  
- iterate through the odd integer array, one element at a time
    - add the 2 even elements and 1 odd element
    - push the subarray to the empty array meant to hold these subarrays
- take and return the count of subarrays with 2 even and 1 odd integer

=end

def two_even_one_odd(arr)
  result_arr = []
  odd, even = arr.partition {|x| x.odd?}
  start_index = 0
  two_evens = even.combination(2).to_a
  two_evens .each do |two_even|
    odd.each do |odd_int|
      arr = two_even + [odd_int]
      result_arr << arr
    end
  end
  result_arr.length
end

p two_even_one_odd([1, 2, 3, 4]) == 2
p two_even_one_odd([1, 2, 3, 4, 6]) == 6
