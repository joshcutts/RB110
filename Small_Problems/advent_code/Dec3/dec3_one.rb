# dec3_one.rb

=begin

The engine schematic (your puzzle input) consists of a visual representation of the engine. 
There are lots of numbers and symbols you don't really understand, but apparently any number 
adjacent to a symbol, even diagonally, is a "part number" and should be included in your sum. (Periods (.) do not count as a symbol.)

Here is an example engine schematic:

467..114..
...*......
..35..633.
......#...
617*......
.....+.58.
..592.....
......755.
...$.*....
.664.598..
In this schematic, two numbers are not part numbers because they are not adjacent to a 
symbol: 114 (top right) and 58 (middle right). Every other number is adjacent to a symbol 
and so is a part number; their sum is 4361.

Of course, the actual engine schematic is much larger. What is the sum of all of the part numbers in the engine schematic?

PROBLEM:
input: martrix of strings (array of arrays of strings). Each string consists of numbers, symbols and . (. are not symbols)
output: integer representing the sum of integers that are adjacent to symbols

EXAMPLE
   0123456789
  __________
0  467..114..
1  ...*......
2  ..35..633.
3  ......#...
4  617*......
5  .....+.58.
6  ..592.....
7  ......755.
8  ...$.*....
9  .664.598..

DATA STRUCTURE:
matrix; array of arrays

{467=> [[0,0], [0, 1], [0, 2]]} # actual coordinates
[1, 0]
[1, 1]
[1, 2]
[0, 1]
[0, 2]
[0, 3]
[0, 4]
valid locations for symbol {467 => [[0, 3], [1, 0], [1, 1], [1, 2], [1, 3]]}
actual location of * on line 2 {"*"=> [1, 3]}
0..2(x-1..x+1), 2..4 (y-1..y+1) 
[0, 2]
[0, 3]
[0, 4]
[1, 2]
[1, 3]
[1, 4]
[2, 2]
[2, 3]
[2, 4]



ALGORITHM:
- identify all numbers and their actual coodinates in the matrix
- identify all symbols and the actual coordinate in the matrix
- from the actual coordinates of the symbols, create valid locations for the number anchored to the actual symbol
  - iterate through the hash values that contain the actual coordinates for each symbol; for each coordinate (representing each symbol)
    - add one to every
- compare the actual coordinates of the symbol to the valid locations generated for each number
  - if the actual coordinate of a symbol matches the generated valid locations, add the number to a result array
- take the sum of all the numbers in the array and return it

=end

Dir.chdir("/Users/joshuacutts/Documents/LaunchSchool/advent_of_code/3December")
engine = File.read('day3_input.txt').split(/\n/)
# p engine
# engine = [
# "467..114..",
# "...*......",
# "..35..633.",
# "......#...",
# "617*......",
# ".....+.58.",
# "..592.....",
# "......755.",
# "...$.*....",
# ".664.598.."
# ]

line_counter = 0
numbers = %w(0 1 2 3 4 5 6 7 8 9)
valid_numbers = []
valid_num_locations = []


loop do
  values = engine[line_counter]
  value_counter = 0
  putative_num = ""
  putative_locations = []

  loop do
    value = values[value_counter]
    if numbers.include?(value)
      putative_num << value
      putative_locations << [line_counter, value_counter]
    elsif putative_num == ""
      #
    else
      valid_numbers << putative_num
      p valid_numbers
      sleep(1)
      valid_num_locations << putative_locations
      putative_num = ""
      putative_locations = []
    end
    value_counter += 1
    break if value_counter > values.length
  end
  line_counter += 1
  break if line_counter >= engine.length
end


# p valid_numbers
# p valid_num_locations
# numbers_locations = valid_numbers.zip(valid_num_locations).to_h

line_counter = 0
valid_symbols = []
valid_symbol_locations = []

loop do
  values = engine[line_counter]
  value_counter = 0
  putative_locations = []
  loop do
    value = values[value_counter]
    if !value.match(/[A-Za-z0-9.]/)
      valid_symbols << value
      valid_symbol_locations << [line_counter, value_counter]
    end
    value_counter += 1
    break if value_counter >= values.length
  end
  line_counter += 1
  break if line_counter >= engine.length
end

# p valid_symbols

# p !"*".match(/[A-Za-z0-9.]/) 
# p !".".match(/[A-Za-z0-9.]/) 
# p !"5".match(/[A-Za-z0-9.]/)

# p valid_symbols
# p valid_symbol_locations

# p numbers_locations
test_symbol_locations = []

valid_symbol_locations.each do |loc|
  x = loc[0]
  y = loc[1]
  ((x-1)..(x+1)).each do |xcord|
    ((y-1)..(y+1)).each do |ycord|
      test_symbol_locations << [xcord, ycord]
    end
  end
end

# p test_symbol_locations

# numbers_locations.each do |num, coord|
#   adjacent_to_sym = false
#   coord.each do |loc|
#     # p loc
#     if test_symbol_locations.include?(loc)
#       adjacent_to_sym = true
#     end
#   end
#   included_nums << num if adjacent_to_sym
# end


line_counter = 0
numbers = %w(0 1 2 3 4 5 6 7 8 9)
valid_numbers = []
valid_num_locations = []
included_nums = []

loop do
  values = engine[line_counter]
  value_counter = 0
  putative_num = ""
  putative_locations = []

  loop do
    value = values[value_counter]
    if numbers.include?(value)
      putative_num << value
      putative_locations << [line_counter, value_counter]
      # p putative_num
      # sleep(2)
    elsif putative_num == ""
      #
    else
      adjacent_to_sym = false
      putative_locations.each do |loc|
        if test_symbol_locations.include?(loc)
          adjacent_to_sym = true
        end
      end
      included_nums << putative_num if adjacent_to_sym
      # p included_nums
      # sleep(5)
      putative_num = ""
      putative_locations = []
    end
    value_counter += 1
    break if value_counter > values.length
  end
  line_counter += 1
  break if line_counter >= engine.length
end

p included_nums.map(&:to_i).sum
