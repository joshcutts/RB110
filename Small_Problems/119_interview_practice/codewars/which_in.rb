# which_in.rb

=begin

Given two arrays of strings a1 and a2 return a sorted array r in 
lexicographical order of the strings of a1 which are substrings of strings of a2.

Example 1:
a1 = ["arp", "live", "strong"]

a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

returns ["arp", "live", "strong"]


Example 2:
a1 = ["tarp", "mice", "bull"]

a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

returns []

PROBLEM:
input: 2 arrays of strings
output: array of strings which are substrings of strings in array 2, sorted in length order

empty array if no strings in arr1 are substrings in array2

EXAMPLES:



DATA STRUCTURE:
array of all substrings

ALGORITHM:
- generate an array of all substrings of the given strings in array 2
- select strings from array 1 which are present in substrings of array2 array
- return the selected array



=end

def generate_substrings(string)
  substrings = []
  (0...string.length).each do |start|
    max_length = string.length - start
    (1..max_length).each do |length|
      substrings << string[start, length]
    end
  end
  substrings
end


def in_array(arr1, arr2)
  arr2_substrings = []
  arr2.each do |str|
    arr2_substrings << generate_substrings(str)
  end
  arr2_substrings.flatten!

  arr1.select { |s| arr2_substrings.include?(s)}.sort
end


p in_array(["arp", "live", "strong"], ["lively", "alive", "harp", "sharp", "armstrong"]) == ["arp", "live", "strong"]
p in_array(a1 = ["tarp", "mice", "bull"], a2 = ["lively", "alive", "harp", "sharp", "armstrong"]) == []