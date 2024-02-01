=begin

PROBLEM:
input: array of strings
output: sorted array of strings, sorted by alpha but case insensitive


=end

def sortme(arr)
  arr.sort_by {|word| word.downcase}
end

p sortme(["Hello", "there", "I'm", "fine"]) == ["fine", "Hello", "I'm", "there"]
p sortme(["C", "d", "a", "B"]) == ["a", "B", "C", "d"]
p sortme(["CodeWars"]) == ["CodeWars"]