# dec3_one.rb

=begin

The missing part wasn't the only issue - one of the gears in the engine is wrong. 
A gear is any * symbol that is adjacent to exactly two part numbers. 
Its gear ratio is the result of multiplying those two numbers together.
This time, you need to find the gear ratio of every gear and add them all up so 
that the engineer can figure out which gear needs to be replaced.

Consider the same engine schematic again:

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
In this schematic, there are two gears. The first is in the top left; it has part numbers 467 and 35, 
so its gear ratio is 16345. The second gear is in the lower right; its gear ratio is 451490. 
(The * adjacent to 617 is not a gear because it is only adjacent to one part number.) Adding up all of the gear ratios produces 467835.

What is the sum of all of the gear ratios in your engine schematic?

PROBLEM:
input: martrix of strings (array of arrays of strings). Each string consists of numbers, symbols and . (. are not symbols)
output: integer representing the sum of gear products

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
numbers_locations = valid_numbers.zip(valid_num_locations).to_h
p numbers_locations

line_counter = 0
valid_symbols_locs = []
valid_symbols_locs_hash = {}
# valid_symbol_locations = []

loop do
  values = engine[line_counter]
  value_counter = 0
  putative_locations = []
  loop do
    value = values[value_counter]
    if !value.match(/[A-Za-z0-9.]/)
      valid_symbols_locs << {[line_counter, value_counter] => []}
      valid_symbols_locs_hash[[line_counter, value_counter]] = []
      # valid_symbol_locations << [line_counter, value_counter]
    end
    value_counter += 1
    break if value_counter >= values.length
  end
  line_counter += 1
  break if line_counter >= engine.length
end


# p !"*".match(/[A-Za-z0-9.]/) 
# p !".".match(/[A-Za-z0-9.]/) 
# p !"5".match(/[A-Za-z0-9.]/)

# p valid_symbols
# p valid_symbol_locations

# p numbers_locations


# test_symbol_locations = []

valid_symbols_locs.each_with_index do |hash, index|
  x = hash.keys[0][0]
  y = hash.keys[0][1]
  key = [x, y]
  ((x-1)..(x+1)).each do |xcord|
    ((y-1)..(y+1)).each do |ycord|
      valid_symbols_locs[index][key] << [xcord, ycord]
    end
  end
end

p valid_symbols_locs_hash

valid_symbols_locs.each do |symbol_locs|
  symbol_locs.each do |unique_loc, loc_range|
    # p "#{unique_loc} #{loc_range}"
    numbers_locations.each do |num, coords|
      # p coords  
      adjacent_bool = false
        coords.each do |coord|
          # p coord
          if loc_range.include?(coord)
            adjacent_bool = true
          end
        end
        valid_symbols_locs_hash[unique_loc] << num if adjacent_bool
    end
  end
end

# gears_hash = valid_symbols_locs_hash.select { |key, value| value.length == 2}
# p gears_hash

# gears = gears_hash.values
# gears = gears.map { |gear| gear.map(&:to_i)}
# p gears.map { |gear| gear.inject(:*)}.sum


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
      valid_symbols_locs.each do |symbol_locs|
        symbol_locs.each do |unique_loc, loc_range|
          # p "#{unique_loc} #{loc_range}"
          # numbers_locations.each do |num, coords|
            # p coords  
            adjacent_bool = false
              putative_locations.each do |coord|
                p coord
                if loc_range.include?(coord)
                  adjacent_bool = true
                end
              end
              valid_symbols_locs_hash[unique_loc] << putative_num if adjacent_bool
          # end
        end
      end
      # included_nums << putative_num if adjacent_to_sym
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

a = valid_symbols_locs_hash.map do |key, value|
  [key, value.uniq]
end.to_h

p a

gears_hash = a.select { |key, value| value.length == 2}
p gears_hash

gears = gears_hash.values
gears = gears.map { |gear| gear.map(&:to_i)}
p gears.map { |gear| gear.inject(:*)}.sum

# p included_nums.map(&:to_i).sum


