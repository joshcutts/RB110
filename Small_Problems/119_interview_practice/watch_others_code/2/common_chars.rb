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
input: array of strings
output: array of common characters amongst all strings

EXAMPLES:
p common_chars(["bella", "label", "roller"]) == ["e", "l", "l"]
p common_chars(["cool", "lock", "cook"]) == ["c", "o"]
p common_chars(["hello", "goodbye", "booya", "random"]) == ["o"]
p common_chars(["aabbaaaa", "ccdddddd", "eeffee", "ggrrrrr", "yyyzzz"]) == []

Data STRUCTURE:

["cool", "lock", "cook"]

c 

o 


ALGORITHM
- initialize empty array for result
- iterate through the first string characters
  - if the count of the character in each string is >= 1
    - find the lowest count amongst the strings and add the given character that number of times to final array
- return the array


=end

def common_chars(words)
  result = []
  words[0].chars.uniq.each do |char|
    if words.all? {|word| word.count(char) >= 1}
      n = words.map {|word| word.count(char)}.min
      n.times {result << char}
    end
  end
  result
end

p common_chars(["bella", "label", "roller"]) == ["e", "l", "l"]
p common_chars(["cool", "lock", "cook"]) == ["c", "o"]
p common_chars(["hello", "goodbye", "booya", "random"]) == ["o"]
p common_chars(["aabbaaaa", "ccdddddd", "eeffee", "ggrrrrr", "yyyzzz"]) == []