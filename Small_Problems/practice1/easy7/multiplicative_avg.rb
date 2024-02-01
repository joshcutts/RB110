=begin


Write a method that takes an Array of integers as input, 
multiplies all the numbers together, divides the result by 
the number of entries in the Array, and then prints the result 
rounded to 3 decimal places. Assume the array is non-empty.

PROBLEM:
input: array of integers
output: integer which is the average of all the numbers in the given array
rounded to 3 decimals

EXAMPLES:
show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

DATA STRUCTURE:

ALGORITHM:
- calculate the cumulative product of the array
- divide the cumulative product of the array by the length of the array (number of integers)
- round the result to 3 decimal places



=end

def show_multiplicative_average(arr)
  format("%.3f", (arr.map(&:to_f).inject(:*)/arr.length)).to_f
end

p show_multiplicative_average([3, 5]) == 7.500               # => The result is 7.500
p show_multiplicative_average([6]) == 6.000                   # => The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) == 28361.667 # => The result is 28361.667