=begin

Create a method that takes two integers as arguments. 
The first argument is a count, and the second is the first number 
of a sequence that your method will create. The method should return an 
Array that contains the same number of elements as the count argument, 
while the values of each element will be multiples of the starting number.

You may assume that the count argument will always have a value of 0 or 
greater, while the starting number can be any integer value. If the count is 0, 
an empty list should be returned.


sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []


PROBLEM:
input: two integers
1) count
2) first number of sequence & mutliples number

output: array of integers
count length
each element is a successive multiple of the first element

EXAMPLES:
sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []

DATA STRUCTURE:
successive elements will be stored in a new array
sequence(5, 1) == [1, 2, 3, 4, 5]

[]
element = num (1)
5 times
- add element to array
- increment the element by value of num


ALGORITHM:
- create an empty array to hold the final result
- initialize an element variable to the value of the 2nd argued integer (num)
- perform the following procedure count # of times (1st argued integer)
  - add the element to the result array
  - increment the element by num
- return the array  

=end

def sequence(count, num)
  result = []
  element = num
  count.times do |_|
    result << element
    element += num
  end
  result
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []