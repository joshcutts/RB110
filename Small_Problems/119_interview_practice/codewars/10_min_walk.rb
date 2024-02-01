=begin

PROBLEM:
input: array of n, s, e ,w as single character strings
output: boolean, true if
1) there are 10 elements in the array
2) the directions cancel each other out 
  - n + s = 0
  - e + w = 0

EXAMPLES:
p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
p is_valid_walk(['w']) == false
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false

DATA STRUCTURE:


ALGORITHM:
- count the number of "n" & "s"
- count the number of "e" & "w"
- if # of "n" "s" equal each other && number of "e" "w" equal each other return true


=end

def is_valid_walk(dir)
  return false if dir.length != 10
  dir.count("n") == dir.count("s") && dir.count("e") == dir.count("w")
end

p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
p is_valid_walk(['w']) == false
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false
p is_valid_walk(['e', 'w', 'e', 'w', 'n', 's', 'n', 's', 'e', 'w']) == true