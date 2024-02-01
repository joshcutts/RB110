=begin

Write a method to find the longest common prefix string
amond an array of strings

If there are no common prefix, return an emtpy string ""

EXAMPLES:
p common_prefix(["flower", "flow", "flight"]) == "fl"
p common_prefix(["dog, "racecar", "car"]) == ""
p common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
p common_prefix(["throne", "dungeon"]) == ""
p common_prefix(["throne", "throne"]) == "throne"

DATA STRUCTURE:


ALGORITHM:
- create an empty "common_prefix" string to hold result 
- iterate through the characters of the 1st string
  - if the character at 0 index is the same in all strings add that character to result string
  - break when the character is not the same across all the strings
- return the result string


=end

def common_prefix(array)
  common_prefix = ""
  first_word = array.shift
  first_word.each_char.with_index do |char, index|
    if array.all? {|word| word[index] == char }
      common_prefix << char
    else
      return common_prefix
    end
  end
  common_prefix
end

p common_prefix(["flower", "flow", "flight"]) == "fl"
p common_prefix(["dog", "racecar", "car"]) == ""
p common_prefix(["interspecies", "interstellar", "interstate"]) == "inters"
p common_prefix(["throne", "dungeon"]) == ""
p common_prefix(["throne", "throne"]) == "throne"