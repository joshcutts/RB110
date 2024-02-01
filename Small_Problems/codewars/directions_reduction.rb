# directions_reduction.rb

=begin

Once upon a time, on a way through the old wild mountainous west,…
… a man was given directions to go from one point to another. The directions were "NORTH", "SOUTH", "WEST", "EAST". Clearly "NORTH" and "SOUTH" are opposite, "WEST" and "EAST" too.

Going to one direction and coming back the opposite direction right away is a needless effort. Since this is the wild west, with dreadful weather and not much water, it's important to save yourself some energy, otherwise you might die of thirst!

How I crossed a mountainous desert the smart way.
The directions given to the man are, for example, the following (depending on the language):


["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"].
or
{ "NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST" };
or
[North, South, South, East, West, North, West]

You can immediately see that going "NORTH" and immediately "SOUTH" is not reasonable, better stay to the same place! So the task is to give to the man a simplified version of the plan. A better plan in this case is simply:

["WEST"]
or
{ "WEST" }
or
[West]
Other examples:
In ["NORTH", "SOUTH", "EAST", "WEST"], the direction "NORTH" + "SOUTH" is going north and coming back right away.

The path becomes ["EAST", "WEST"], now "EAST" and "WEST" annihilate each other, therefore, the final result is [] (nil in Clojure).

In ["NORTH", "EAST", "WEST", "SOUTH", "WEST", "WEST"], "NORTH" and "SOUTH" are not directly opposite but they become directly opposite after the reduction of "EAST" and "WEST" so the whole path is reducible to ["WEST", "WEST"].

Task
Write a function dirReduc which will take an array of strings and returns an array of strings with the needless directions removed (W<->E or S<->N side by side).

The Haskell version takes a list of directions with data Direction = North | East | West | South.
The Clojure version returns nil when the path is reduced to nothing.
The Rust version takes a slice of enum Direction {North, East, West, South}.
See more examples in "Sample Tests:"
Notes
Not all paths can be made simpler. The path ["NORTH", "WEST", "SOUTH", "EAST"] is not reducible. "NORTH" and "WEST", "WEST" and "SOUTH", "SOUTH" and "EAST" are not directly opposite of each other and can't become such. Hence the result path is itself : ["NORTH", "WEST", "SOUTH", "EAST"].
if you want to translate, please ask before translating.

Examples:
p dirReduc(["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]) == ["WEST"]
p dirReduc(["NORTH", "WEST", "SOUTH", "EAST"]) == ["NORTH", "WEST", "SOUTH", "EAST"]
p dirReduc(["NORTH", "SOUTH", "EAST", "WEST"]) == []
p dirReduc(["NORTH", "EAST", "WEST", "SOUTH", "WEST", "WEST"]) == ["WEST", "WEST"]

PROBLEM:
input: array of directions, NORTH, SOUTH, EAST, WEST
output: simplified directions, where any direcitons that "cancel each other out" are removed


EXAMPLES:
p dirReduc(["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]) == ["WEST"]
p dirReduc(["NORTH", "WEST", "SOUTH", "EAST"]) == ["NORTH", "WEST", "SOUTH", "EAST"]
p dirReduc(["NORTH", "SOUTH", "EAST", "WEST"]) == []
p dirReduc(["NORTH", "EAST", "WEST", "SOUTH", "WEST", "WEST"]) == ["WEST", "WEST"]


DATA STRUCTURE:
["NORTH", "EAST", "WEST", "SOUTH", "WEST", "WEST"]

NORTH = +1
SOUTH = -1
EAST = +2
WEST = -2

direction = 0
"NORTH"
direction = 1
"EAST"
direction = 3
"WEST"
direction = 1
SOUTH
direction = 0

NORTH = +1
SOUTH = -1
EAST = +1
WEST = -1

north_south = 0
east_west = 0

"NORTH"
north_south += 1; north_south = 1
"EAST"
east_west += 1
"WEST"
east_west -= 1; east_west = 0
"SOUTH"
north_south -= 1
"WEST"
east_west += 1
"WEST"
east_west += 1

ALGORITHM:
- iterate through the array of directions, starting at index 1
- if the previous direction is the opposite of the current direction, remove the previous element and current element from the array
- if 2 elements are removed, remove 2 from counter
- iterate the counter
- recalculate length of array if elements are removed
- continue until the last element of the direction array

EASIER
- iterate through the directions
- add the first element to a new result array
- if the last element in the new directions is opposite of the current element
  - remove the last element in the new directions array
- otherwise, add the currect direciton

=end

def opposite_direction(dir1, dir2)
  if (dir1 == "NORTH" && dir2 == "SOUTH" )|| (dir1 == "SOUTH" && dir2 == "NORTH")
    return true
  elsif (dir1 == "EAST" && dir2 == "WEST") || (dir1 == "WEST" && dir2 == "EAST")
    return true
  end
  false
end

def dirReduc(directions)
  new_directions = []
  directions.each do |dir|
    if opposite_direction(new_directions.last, dir)
      new_directions.pop
    else
      new_directions << dir
    end
  end
  new_directions
end

# def dirReduc(directions)
#   counter = 1
#   length = directions.length
#   loop do
#     direction = directions[counter]
#     prev_direction = directions[counter-1]
#     if opposite_direction(direction, prev_direction)
#       index_subset = (0..length).to_a - [counter-1, counter]
#       directions = directions.select.with_index {|dir, index| index_subset.include?(index)}
#       length = directions.length
#       counter = 0
#     end
#     counter += 1
#     break if counter >= length
#   end
#   directions
# end



p dirReduc(["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"]) == ["WEST"]
p dirReduc(["NORTH", "WEST", "SOUTH", "EAST"]) == ["NORTH", "WEST", "SOUTH", "EAST"]
p dirReduc(["NORTH", "SOUTH", "EAST", "WEST"]) == []
p dirReduc(["NORTH", "EAST", "WEST", "SOUTH", "WEST", "WEST"]) == ["WEST", "WEST"]

# p ["NORTH", "SOUTH", "SOUTH", "EAST", "WEST", "NORTH", "WEST"].delete_at(3)