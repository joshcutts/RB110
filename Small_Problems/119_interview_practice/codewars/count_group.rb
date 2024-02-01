=begin

Write a method that takes a string as an argument and groups the number of time each 
character appears in the string as a hash sorted by the highest number of occurrences.

The characters should be sorted alphabetically e.g:

You should ignore spaces, special characters and count uppercase letters as 
lowercase ones.

PROBLEM:
input: string
output: hash with 

EXAMPLES:

DATA STRUCTURE:
hash

ALGORITHM:
- create empty hash to hold counts
- 

=end

def get_char_count(str)
  counts = {}
  str.downcase!
  str.gsub!(/[^A-Za-z0-9]/, "")
  str.chars.sort.uniq.each do |char|
    if counts.keys.include?(str.count(char))
      counts[str.count(char)] << char
    else
      counts[str.count(char)] = [char]
    end
  end
  counts
end

p get_char_count("Mississippi") == {4=>["i", "s"], 2=>["p"], 1=>["m"]}
p get_char_count("Hello. Hello? HELLO!") == {6=>["l"], 3=>["e", "h", "o"]}
p get_char_count("aaa...bb...c!") == {3=>["a"], 2=>["b"], 1=>["c"]}
p get_char_count("abc123") == {1=>["1", "2", "3", "a", "b", "c"]}
p get_char_count("aaabbbccc") == {3=>["a", "b", "c"]}