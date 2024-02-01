
# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

# Examples:

# p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
# p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4])
#                             == [0, 2, 4, 5, 6, 1, 2, 3, 2]
# p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
# p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
# p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".

=begin

PROBLEM:
input: array of integers
output: another array of integers, where each integer is the # of unique integers smaller
than the current integer

EXAMPLES:
# p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
# p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4])
#                             == [0, 2, 4, 5, 6, 1, 2, 3, 2]
# p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
# p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
# p smaller_numbers_than_current([1]) == [0]


DATA STRUCTURE:
[8,1,2,2,3]

index 0, num = 8
[0...index] + [index+1..-1] unique & count

index 1, num = 1
[0...index] + [index+1..-1]

ALGORITHM:
- create an empty array to hold the results
- iterate from 0 to array length -1
  - save num at current index to a variable
  - create a new array without the element at the current index
  - take the unique values of the array and count those that are less than the current integer, add that count to array
- return the array of counts less than current integer


=end


def smaller_numbers_than_current(array)
  results = []
  (0...array.length).each do |index|
    num = array[index]
    removed_current_num = array[0...index] + array[index+1..-1]
    results << removed_current_num.uniq.count {|n| n < num}
  end
  results
end


p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]