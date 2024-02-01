#build_tower.rb

=begin
Build a pyramid-shaped tower, as an array/list of strings, given a positive integer number of floors. A tower block is represented with "*" character.

For example, a tower with 3 floors looks like this:

[
  "  *  ",
  " *** ", 
  "*****"
]
5
And a tower with 6 floors looks like this:

[
  "     *     ", 1
  "    ***    ", 3
  "   *****   ", 5
  "  *******  ", 7
  " ********* ", 9
  "***********" 11
]

PROBLEM:
input: integer
output: array of stars based on integer

EXAMPLES:

DATA STRUCTURE:


ALGORITHM:
- initialize stars at 1
- spaces = (n * 2) - 1 
- initialize empty array
- n times
  - add a string of * centered at spaces to array



=end

def towerBuilder(n_floors)
  stars = 1
  spaces = (n_floors * 2) - 1
  tower_array = []
  n_floors.times do |floor|
    tower_array << ("*" * stars).center(spaces)
    stars += 2
  end
  tower_array
end

p towerBuilder(1) == ['*']
p towerBuilder(2) == [' * ', '***']
p towerBuilder(3) == ['  *  ', ' *** ', '*****']