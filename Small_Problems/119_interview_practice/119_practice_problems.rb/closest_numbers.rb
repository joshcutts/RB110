=begin

# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

# Examples:

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]

# The tests above should print "true".


PROBLEM:
input: array of integers
output: array of 2 integers that are closest together in value

EXAMPLES:
p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]


DATA STRUCTURE:
[5, 25, 15, 11, 20]

[5, 25]
20

[25, 15]
10

[15, 11]
4

[11, 20]
9

ALGORITHM:
- generate all the combiations of 2 integers from the original array
- create an initial difference variable that is the absolute value of element at index 1 - index 0 element
- create an empty array that will hold putative 2 array solutions
- iterate through the combiations
  - if the absolute value of the difference of the elements is less than min difference variable
    - replace the array that will hold the final result with the current array
- return the array result


=end

def closest_numbers(array)
  combos = array.combination(2).to_a
  final_arr = combos[0]
  min_difference = (combos[0][1] - combos[0][0]).abs
  combos.each do |combo|
    difference = (combo[1] - combo[0]).abs
    if difference < min_difference
      final_arr = combo
      min_difference = difference
    end
  end
  final_arr
end


p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]
