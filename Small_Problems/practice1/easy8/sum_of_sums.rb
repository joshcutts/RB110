# sum_of_sums.rb

=begin

Write a method that takes an Array of numbers and then returns the sum of 
the sums of each leading subsequence for that Array. You may assume that the
Array always contains at least one number.

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35




PROBLEM:
input: array of integers
output: integer which is the sum of the sums of the leading subsequences for that array

EXAMPLES:
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

DATA STRUCTURES:
[3, 5, 2]

0
01
02

3 => 3
3 + 5 => 8
3 + 5 + 2 => 10

[3, 8, 10] => 21

overview
- generate leading subsequences
- for each leading subsequence, generate the sum and add to a new array
- once done generating subsequences, find the sum of the integermediate array


ALGORITHM:
- create an empty array to hold the result of subsequence additions



=end

def sum_of_sums(arr)
  intermediate_result = []
  (1..arr.length).each do |length|
    intermediate_result << arr[0, length].sum
  end
  intermediate_result.sum
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35