# parity.rb

=begin

You are given an array (which will have a length of at least 3, 
but could be very large) containing integers. The array is either 
entirely comprised of odd integers or entirely comprised of even 
integers except for a single integer N. Write a method that takes 
the array as an argument and returns this "outlier" N.

[2, 4, 0, 100, 4, 11, 2602, 36] -->  11 (the only odd number)

[160, 3, 1719, 19, 11, 13, -21] --> 160 (the only even number)

PROBLEM:
input: array of integers
output: the parity number
if all but one elements are odd, return the even element
if all but one elements are even, return the the odd element

EXAMPLES:
p find_outlier([0, 1, 2]) == 1
p find_outlier([1, 2, 3]) == 2

DATA STRUCTURE:


1. 
- count the number of even elements, if > 1 return odd element else return even element

2. partition into even and odd arrays and return the element from array with 1 element

ALGORITHM:
- count the number of even elements, if > 1 return odd element else return the even element

=end

# def find_outlier(arr)
#   arr.count {|x| x.even?} > 1 ? arr.select {|x| x.odd?}[0] : arr.select {|x| x.even?}[0]
# end

def find_outlier(arr)
  even, odd = arr.partition {|x| x.even?}
  even.length > 1 ? odd[0] : even[0]
end


p find_outlier([0, 1, 2]) == 1
p find_outlier([1, 2, 3]) == 2