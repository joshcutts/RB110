# rotate_90.rb

=begin

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

3  4  1
9  7  5
6  2  8


3  4  1
9  7  5

9  3
7  4
5  1

DATA STRUCTURE:

1 0
0 0

1 1
0 1

1 2
0 2

ALGORITHM:

- intialize new empty array to hold final result
- outer loop controls column element (0...arr[0].length)
  - initialize empty row array to add
  - inner loop controls row element (0...arr.length) - iterate backwards
    - add element to new row
  - add row to result
- return result

=end

def rotate90(mat)
  rotated_mat = []
  (0...mat[0].length).each do |col|
    new_row = []
    (0...mat.length).reverse_each do |row|
      new_row << mat[row][col]
    end
    rotated_mat << new_row
  end
  rotated_mat
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2