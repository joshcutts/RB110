=begin

Complete the function that

accepts two integer arrays of equal length
compares the value each member in one array to the corresponding member in the other
squares the absolute value difference between those two values
and returns the average of those squared absolute value difference between each member pair.

[1, 2, 3], [4, 5, 6]              -->   9   because (9 + 9 + 9) / 3
[10, 20, 10, 2], [10, 25, 5, -2]  -->  16.5 because (0 + 25 + 25 + 16) / 4
[-1, 0], [0, -1]                  -->   1   because (1 + 1) / 2

PROBLEM:
input: 2 arrays of integers of equal length
output: integer which is the abs difference between elements at the same index in the 2 argued arrays

EXAMPLES:
p solution([1, 2, 3], [4, 5, 6]) == 9
p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5
p solution([-1, 0], [0, -1]) == 1

DATA STRUCTURE:

ALGORITHM:
- iterate through the arrays
  - take the abs value of the difference of the 2 elements at the same array, save to new array
- take the average of the new array and return



=end

def solution(a1, a2)
  a1.zip(a2).map {|a, b| ((a.to_f-b).abs ) ** 2}.sum / a1.length
end



p solution([1, 2, 3], [4, 5, 6]) == 9
p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5
p solution([-1, 0], [0, -1]) == 1