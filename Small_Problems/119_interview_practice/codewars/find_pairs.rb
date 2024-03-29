=begin

You are given array of integers, your task will be to count all pairs in 
that array and return their count.

Notes:

Array can be empty or contain only one value; in this case return 0
If there are more pairs of a certain number, count each pair only once. 
E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
Random tests: maximum array length is 1000, range of values in array is 
between 0 and 1000

PROBLEM:
input: array of integers
output: count of pairs of integers that are the same

EXAMPLES:
p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3 
p pairs([1000, 1000]) == 1
p pairs([]) ==  0
p pairs([54]) == 0

DATA STRUCTURE:
array of unique integers

ALGORITHM:
- intialize a pair count variable with value 0
- generate an array of all unique integers from the argued array
- iterate over the unique integers array
  - count the occurence of the integer in the original array
  - if count > 1, divide by 2 and add to pair count
- return pair count
=end

def pairs(arr)
  pair_count = 0
  unique_ints = arr.uniq
  unique_ints.each do |int|
    count = arr.count(int)
    pair_count += count/2 if count > 1
  end
  pair_count
end


p pairs([1, 2, 5, 6, 5, 2]) #== 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3 
p pairs([1000, 1000]) == 1
p pairs([]) ==  0
p pairs([54]) == 0