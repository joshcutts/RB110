#rotate_matrix.rb

=begin

PROBLEM:
input: nested array
output: nested array, elements rotated by 90 degrees clockwise
ie. last row becomes, first column
2nd row becomes second column
1st row becomes last column
don't have to mutate in place (can make a new array)

explicit: see above
implicit: all integers, valid nested arrays that can be rotated

EXAMPLES:
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

DATA STRUCTURE:
arrays

ALGORITHM:
output: nested array, elements rotated by 90 degrees clockwise
1st column becomes 1st row in reverse order
2nd column becomes 2nd row in reverse order
3rd column becomes 3rd row in reverse order
don't have to mutate in place (can make a new array)

[0][0] = [1][0]
[1][0] = [0][0]

[1][0] = [1][1]
[1][1] = [0][1]

[2][0] = [1][2]
[2][1] = [0][2]

[3][0] = [1][3]
[3][1] = [0][3]


- create new empty array called `rotated_array`
- create nested arrays in empty array based on # of elements in the 1st element of the original array (this will correspond to the rows in final rotated array)
- initialize column_num at 0
- start loop
  -intialize row_num at 0
  - start loop
    - rotated_array[row_num][column_num] = original_array[row_num][column_num]
    - iterate row_num
    - break if row_num >= # of elements in nested array
  -iterate column_num
  -break if column_num >= # of elements in 1st element of nested array
- return the rotated_array with each element reversed (map)

CODE:


=end

def rotate90(original_arr)
  rotated_matrix = []
  array_length = original_arr[0].length
  array_length.times {rotated_matrix << []}
  
  column_num = 0
  loop do
    row_num = 0
    loop do
      rotated_matrix[row_num][column_num] = original_arr[column_num][row_num]
      row_num += 1
      break if row_num >= original_arr[0].length
    end
    column_num += 1
    break if column_num >= original_arr.length
  end
  rotated_matrix.map {|arr| arr.reverse}
end

# matrix = [
#   [1, 5, 8],
#   [4, 7, 2],
#   [3, 9, 6]
# ]

# matrix.reverse_each {|x| p x}

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