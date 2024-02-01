# transpose.rb

=begin

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

1  4  3
5  7  9
8  2  6

PROBLEM:
input: matrix (nested arrays)
output: transposed matrix

EXAMPLES:
matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

DATA STRUCTURE:
0 0 
1 0
2 0

0 1
1 1
2 1

0 2
1 2
2 2

ALGORITHM:
- outer loop will access element row position
  - iterate from 0 to # of subarrays (rows)
  - inner loop will access element column position
    - iterate from 0 to # of elements in subarray (cols)


=end

def transpose(nested_arr)
  new_arr = []
  (0..nested_arr[0].length-1).each do |row|
    new_row = []
    (0..nested_arr.length-1).each do |col|
      # p "#{col} #{row}"
      new_row << nested_arr[col][row]
    end
    new_arr << new_row
  end
  new_arr
end

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

# new_matrix = transpose(matrix)

# p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
# p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]