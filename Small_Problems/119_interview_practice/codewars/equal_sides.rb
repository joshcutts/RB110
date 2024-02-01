# equal_sides.rb


=begin

You are going to be given an array of integers. Your job is to take that array and find an 
index N where the sum of the integers to the left of N is equal to the sum of the integers 
to the right of N. If there is no index that would make this happen, return -1.

Let's say you are given the array {1,2,3,4,3,2,1}:
Your function will return the index 3, because at the 3rd position of the array, 
the sum of left side of the index ({1,2,3}) and the sum of the right side of the index 
({3,2,1}) both equal 6.


EXAMPLES:
p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index(Array(1..100)) == -1
p find_even_index([0,0,0,0,0]) == 0 #,"Should pick the first index if more cases are valid"
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
p find_even_index(Array(-100..-1)) == -1

DATA STRUCTURE:
left
0...0(i)

right
(i+1)..-1

ALGORITHM:
- iterate through the index
  - calculate left side & right side not including the current index
  - if the left and right side are equal return the index
- return -1 (no index was found)  

=end

def find_even_index(arr)
  (0...arr.length).each do |i|
    left = arr[0...i].sum
    right = arr[i+1..-1].sum
    return i if left == right
  end
  -1
end


p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index(Array(1..100)) == -1
p find_even_index([0,0,0,0,0]) == 0 #,"Should pick the first index if more cases are valid"
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
p find_even_index(Array(-100..-1)) == -1