# common_chars.rb

=begin

Given an array of strings made only from lowercase letters,
return an array of all characters that show up in all strings
within the given array (including duplicates).
For example, if a character occurs 3 times in all strings but not 
4 times, you need to include that character 3 times in the final answer

p common_chars(["bella", "label", "roller"]) == ["e", "l", "l"]
p common_chars(["cool", "lock", "cook"]) == ["c", "o"]
p common_chars(["hello", "goodbye", "booya", "random"]) == ["o"]
p common_chars(["aabbaaaa", "ccdddddd", "eeffee", "ggrrrrr", "yyyzzz"]) == []

PROBLEM:
input: array of strings made up of lowercase characters
output: array of characters that show up in all strings

EXAMPLES:
p common_chars(["bella", "label", "roller"]) == ["e", "l", "l"]
p common_chars(["cool", "lock", "cook"]) == ["c", "o"]
p common_chars(["hello", "goodbye", "booya", "random"]) == ["o"]
p common_chars(["aabbaaaa", "ccdddddd", "eeffee", "ggrrrrr", "yyyzzz"]) == []


DATA STRUCTURE:
hash of counts of each character
make a hash count for each string and put into an array
[{"a" => 1, "b" => 3}]

ALGORITHM:
- create an empty array that will hold the result (characters that appear in all strings)
- create an emtpy array to hold the hash counts for each string
- iterate through the array of strings and add the count hash to the array
- iterate through the hash count of the first string
  - if the character (key) is included in the remaining hashes
  - find the minimum count of the character (key) and add the character that number of times to the reuslt hash
- return the result array

=end

# def common_chars(array)
#   common_chars_result = []
#   hash_counts = []
#   array.each do |string|
#     hash_counts << string.chars.tally
#   end

#   first_string_counts = hash_counts[0]
#   remaining_string_counts = hash_counts[1..-1]
  
#   first_string_counts.each do |char, count|
#     char_included = []  
#     char_included << count
#     remaining_string_counts.each do |string_count|
#       if string_count.keys.include?(char)
#         char_included << string_count[char]
#       else
#         char_included << false
#       end
#     end
#     if char_included.all?
#       (char_included.min).times {common_chars_result << char}
#     end
#   end
#   common_chars_result
# end


def common_chars(array)
  first_string_array = array.shift.chars

  first_string_array.select do |char|
    array.all? {|word| word.sub!(char, "")}
  end
end


p common_chars(["bella", "label", "roller"]) #== ["e", "l", "l"]
p common_chars(["cool", "lock", "cook"]) #== ["c", "o"]
p common_chars(["hello", "goodbye", "booya", "random"]) == ["o"]
p common_chars(["aabbaaaa", "ccdddddd", "eeffee", "ggrrrrr", "yyyzzz"]) == []

p "bella".chars.index("l")
p "bella".sub("l", "")