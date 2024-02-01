
=begin

PROBLEM:
input: nested arrays
output: array which is the x, y location of the "1" in the nested arrays

EXAMPLES:
p mineLocation([ [1, 0], [0, 0] ]) == [0, 0]
p mineLocation([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) == [0, 0]
p mineLocation([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) == [2, 2]

DATA STRUCTURE:
nested arrays
 0  1
[1, 0] 0
[0, 0] 1

[1, 0, 0]
[0, 0, 0]
[0, 0, 0]

[0, 0, 0, 0]
[0, 0, 0, 0]
[0, 0, 1, 0]
[0, 0, 0, 0]


ALGORITHM
- use outer loop to access row
- from 0 to length of nested array (number of subarrays) - 1 (or non-inclusive)
  - use inner loop to access column
  - from 0 to lenth of a subarray (can use 1st element of nested array length)
    - return the row, column if the element is 1

=end

def mineLocation(field)
  (0..field.length).each do |row|
    (0...field[0].length).each do |col|
      return [row, col] if field[row][col] == 1
    end
  end
end


p mineLocation([ [1, 0], [0, 0] ]) == [0, 0]
p mineLocation([ [1, 0, 0], [0, 0, 0], [0, 0, 0] ]) == [0, 0]
p mineLocation([ [0, 0, 0, 0], [0, 0, 0, 0], [0, 0, 1, 0], [0, 0, 0, 0] ]) == [2, 2]