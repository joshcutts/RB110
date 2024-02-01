=begin

You are going to be given an array of integers.
Your job is to take that array and find an index N where the sum
of the integers to the left of N is equal to the sum of the integers to the right of N.
If there is no index that would make this happen, return -1

For example

Let's say you are given the array [1, 2, 3, 4, 3, 2, 1]:
Your method will return the index 3, because at the 3rd position of the array
the sum of the left of the index [1, 2, 3] and the sum of the right side of the index 
[3, 2, 1] both equal 6.

p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
p find_even_index([1, 100, 50 -51, 1, 1]) == -1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3

PROBLEM:
input: array of integers (can be positive or negative)
output: integer, which is the index at which the slice to the left equals the slice to the right
-1 if no such index exists

EXAMPLES:
p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
p find_even_index([1, 100, 50 -51, 1, 1]) == -1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3

DATA STRUCTURE:

[1, 2, 3, 4, 3, 2, 1]

iterate from 1 to length-1 (non-inclusive)

index: 1
left slice: [0...1]
right slice: [(1+1)..-1]

index: 2
left slice: [0...2]
right slice: [(2+1)..-1]

ALGORITHM:
- iterate from 1 to the length of index - 1 (non-inclusive)
  - slice left array and find sum, assign to variable
  - slice right array and find sum, assign to variable
  - compare left and right slice sums, if equal return index
- once done iterating return -1 (since no index was found)

=end

def find_even_index(array)
  (0..array.length-1).each do |index|
    left_sum = array[0...index].sum
    right_sum = array[index+1..-1].sum
    return index if left_sum == right_sum
  end
  -1
end

p find_even_index([1, 2, 3, 4, 3, 2, 1]) == 3
p find_even_index([1, 100, 50 -51, 1, 1]) == 1
p find_even_index([1, 2, 3, 4, 5, 6]) == -1
p find_even_index([20, 10, 30, 10, 10, 15, 35]) == 3
p find_even_index([20, 10, -80, 10, 10, 15, 35]) == 0
p find_even_index([10, -80, 10, 10, 15, 35, 20]) == 6
p find_even_index([-1, -2, -3, -4, -3, -2, -1]) == 3