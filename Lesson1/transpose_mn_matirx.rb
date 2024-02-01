=begin

PROBLEM:
input: nested array
output: transposed nested array

explicit: don't use transpose or matrix operations
dont mutate the original array

implicit: valid nested array given

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
arrays, lots of nested arrays

ALGORITHM:
[0][0] = [0][0]
[1][0] = [0][1]
[2][0] = [0][2]

[0][1] = [1][0]
[1][1] = [1][1]
[2][1] = [1][2]

[0][2] = [2][0]
[1][2] = [2][1]
[2][2] = [2][2]

- initialize `transposed_arr` empty array
- add new empty arrays equal to length of current nested array (times)
- initialize an outer counter
- start outer loop
  - initialize an inner counter
  - start inner loop
    - transposed_arr << original_arr[inner][outer]
    - increment inner counter
    - break if inner counter >= length of original_arr.length
  - increment the outer counter
  - break if outer counter >= length of original_arr.length

CODE:

=end



=begin
ALGORITHM:
[0][0] = [0][0]
[1][0] = [0][1]
[2][0] = [0][2]

[0][1] = [1][0]
[1][1] = [1][1]
[2][1] = [1][2]

[0][2] = [2][0]
[1][2] = [2][1]
[2][2] = [2][2]
--------------------
[0][0] = [0][0]
[0][1] = [1][0] # 1
[0][2] = [2][0] # 3

[1][0] = [0][1] # 1
[1][1] = [1][1]
[1][2] = [2][1]  # 2

[2][0] = [0][2] # 3
[2][1] = [1][2] # 2
[2][2] = [2][2]
=end

# def transpose!(original_arr)
#   transposed_arr = []
#   arr_length = original_arr.length
#   arr_length.times {transposed_arr << []}
  
#   outer_counter = 0
#   loop do
#     inner_counter = 0
#     loop do
#       p "[#{outer_counter}][#{inner_counter}] #{original_arr[inner_counter][outer_counter]} = [#{inner_counter}][#{outer_counter}]"
#       if inner_counter > outer_counter
#         p "[#{outer_counter}][#{inner_counter}] #{original_arr[inner_counter][outer_counter]} = [#{inner_counter}][#{outer_counter}]"
#         original_arr[outer_counter][inner_counter], original_arr[inner_counter][outer_counter] = original_arr[inner_counter][outer_counter], original_arr[outer_counter][inner_counter]
#       end
#       inner_counter += 1
#       break if inner_counter >= arr_length
#     end
#     outer_counter += 1
#     break if outer_counter >= original_arr[0].length
#   end
  
# end

def transpose(original_arr)
  transposed_arr = []
  arr_length = original_arr[0].length
  arr_length.times {transposed_arr << []}
  # p transposed_arr
  # p arr_length
  outer_counter = 0
  loop do
    inner_counter = 0
    loop do
      #p "[#{outer_counter}][#{inner_counter}]"
      transposed_arr[outer_counter] << original_arr[inner_counter][outer_counter]
      inner_counter += 1
      #p "outer #{outer_counter} inner_counter #{inner_counter}"
      break if inner_counter >= original_arr.length
    end
    outer_counter += 1
    #p transposed_arr
    #p "outer #{outer_counter}"
    break if outer_counter >= arr_length
  end
  transposed_arr
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
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) == [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
# transpose([[1]]) == [[1]]


# transpose!(matrix)

# p matrix #== [[1, 4, 3], [5, 7, 9], [8, 2, 6]]