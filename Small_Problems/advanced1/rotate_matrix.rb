#rotate_matrix.rb

=begin

DATA STRUCTURES:

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

3  4  1
9  7  5
6  2  8

[row][column]
[0][1]
[0][2]
[0][3]

[1] unshift
[4, 1] unshift
[3, 4, 1] unshift
push

=end

def rotate90(matrix)
  rotated_matrix = []
  rows = matrix.length-1
  columns = matrix[0].length-1
  #(columns+1).times {rotated_matrix << []}

  (0..columns).each do |column|
    new_row = []
    (0..rows).each do |row|
      #p "#{column}#{row}"
      new_row.unshift(matrix[row][column])
    end
    rotated_matrix << new_row
  end
  rotated_matrix
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

p new_matrix1
p new_matrix2
p new_matrix3 == matrix2