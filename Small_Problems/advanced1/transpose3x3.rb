# transpose3x3.rb

=begin

PROBLEM:
input: 3x3 matrix
output: transposed 3x3 matrix

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
[1, 5, 8],
[4, 7, 2],
[3, 9, 6]

FINAL
[1, 4, 3],
[5, 7, 9],
[8, 2, 6]

[0][0] -> [0][0]
[1][0] -> [0][1]
[2][0] -> [0][2]

[0][1] -> [1][0]
[1][1] -> [1][1]
[2][1] -> [1][2]

[0][2] -> [2][0]
[1][2] -> [2][1]
[2][2] -> [2][2]

ALGORITHM:
- columns = matrix[0].length
- rows = matrix.length 
- initialize transposed matrix empty []
- start an outer loop to iterate through the original matrix rows
  - start an inner loop to iterate through the original matrix columns
    - populate the new transposed matrix by assigning the original [row][column] element to [column][row] position in transposed matrix

=end

def transpose(matrix)
  columns = matrix[0].length-1
  rows = matrix.length-1
  transposed_array = []
  (columns+1).times {transposed_array.push([])}

  (0..columns).each do |column|
    (0..rows).each do |row|
      transposed_array[column][row] = matrix[row][column]
    end
  end
  transposed_array
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) ==
  [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]