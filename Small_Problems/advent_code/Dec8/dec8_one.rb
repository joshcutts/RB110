=begin

PROBLEM:
input: "instructions" that point to index 
& 

output: number of iterations (steps) to reach "ZZZ"

EXAMPLE:
RL
R == 1
L == 0

AAA = (BBB, CCC)
BBB = (DDD, EEE)
CCC = (ZZZ, GGG)
DDD = (DDD, DDD)
EEE = (EEE, EEE)
GGG = (GGG, GGG)
ZZZ = (ZZZ, ZZZ)

DATA STRUCTURE:
convert RL to numbers array
convert input into hash keys for lefthand side and array on values

"AAA" = ["BBB", "CCC"]
"BBB" = ["DDD", "EEE"]
"CCC" = (ZZZ, GGG)
"DDD" = (DDD, DDD)
"EEE" = (EEE, EEE)
"GGG" = (GGG, GGG)
"ZZZ" = (ZZZ, ZZZ)


ALGORITHM:
- convert input into hash with array values
- create array of directions with integer index replacing RL direction
- assign element to starting element, which is the first key of the hash
- while the element is not "ZZZ"
  - use index to keep track of directions & restart when necessary; use counter to keep track of # of steps required to find ZZZ
  - iterate through the directions array, reassigning the element according to direction
  - iterate counter
  - when index > length of directions array, reset directions counter to 0
  - break when element == "ZZZ"


=end

Dir.chdir("/Users/joshuacutts/Documents/Documents - Joshua’s MacBook Pro/LaunchSchool/advent_of_code/8December")
arr = File.read('day8_input.txt').split(/\n/)

# p arr
directions = arr.shift
# p directions.length

# test = "LRLRLLRRLLRRLRRLRRRLLRLRLRLRLRRLRRRLRLRRLRLLRRLLRLRRLRLRRLLRRRLRLRLRRRLRLLRRRLLLLLLRRRLRRLLLRRLRLRRLRRLRLRRLRRLLRRLRRRLRRRLLRLRLLLRRLLLRRLLRRLRLLRRRLRRRLRRRLRLRRLRRLLLRRRLRRLLRRLRRRLRLRLRRLRRLRRRLRRRLRLLLLRRRLRLRRRLRRRLLRLRRLRRLLRLLLRRLRLRRLRRRLRRRLRRRLLRRRLRLLRRRLRRRLRRRLRRRLRRLRRRLLRRLLRLRLRRRLRRRLRLRRRR"
# p test.length
p arr
arr.shift
p arr
arr = arr.map {|node| node.gsub("(", "")}.map {|node| node.gsub(")", "")}
hash = arr.map {|node| node.split(" = ")}.to_h
keys = hash.keys
values = hash.values
arr_values = values.map { |value| value.split(", ")}

network_nodes = keys.zip(arr_values).to_h

directions_arr = directions.gsub("R", "1").gsub("L", "0").split("").map(&:to_i)
directions_hash = (0..directions_arr.length-1).to_a.zip(directions_arr).to_h
element = network_nodes.keys[0]

p network_nodes
p directions_hash

# counter = 0
# index = 0
# while element != "ZZZ"
#   element = network_nodes[element][directions_hash[index]]
#   p element
#   sleep(1)
#   counter += 1
#   index += 1
#   index = 0 if index >= directions_arr.length
#   # p index
# end

# p counter