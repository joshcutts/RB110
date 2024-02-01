# divisible_sum_pair.rb

=begin

Given an array (arr) of integers, and a positive integer k. Find the number of pairs (i, j) having the sum (arr[i] + arr[j]) that is divisible by k and i < j.

Test cases:

divisible_sum_pairs([1, 3, 2, 6, 1, 2], 3) == 5
divisible_sum_pairs([8, 10], 2) == 1
divisible_sum_pairs([5, 9, 10, 7, 4], 2) == 4
divisible_sum_pairs([29, 97, 52, 86, 27, 89, 77, 19, 99, 96], 3) == 15

PROBLEM:
input: array of integers
output: integer which is the number of pairs of integers
which has sum less than k where index i is less than index j

EXAMPLES:
divisible_sum_pairs([1, 3, 2, 6, 1, 2], 3) == 5
divisible_sum_pairs([8, 10], 2) == 1
divisible_sum_pairs([5, 9, 10, 7, 4], 2) == 4
divisible_sum_pairs([29, 97, 52, 86, 27, 89, 77, 19, 99, 96], 3) == 15

DATA STRUCTURE:
array of pairs where i < j

ALGORITHM:
- generate pairs of elements where i is less than j
- select those pairs where the sum is equal to k
- return the length of that array

=end




def divisible_sum_pairs(arr, k)
  subarrays = []
  (0...arr.length-1).each do |i|
    (i+1...arr.length).each do |j|
      subarrays << [arr[i], arr[j]]
    end
  end
  subarrays.select {|subarr| (subarr[0] + subarr[1]) % k == 0}.length
end



p divisible_sum_pairs([1, 2, 3, 4, 5, 6], 5) == 3
p divisible_sum_pairs([1, 3, 2, 6, 1, 2], 3) == 5
p divisible_sum_pairs([8, 10], 2) == 1
p divisible_sum_pairs([5, 9, 10, 7, 4], 2) == 4
p divisible_sum_pairs([29, 97, 52, 86, 27, 89, 77, 19, 99, 96], 3) == 15