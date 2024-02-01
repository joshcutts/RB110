# count_dups.rb

=begin

Write a function that will return the count of distinct case-insensitive alphabetic 
characters and numeric digits that occur more than once in the input string. The input 
string can be assumed to contain only alphabets (both uppercase and lowercase) and 
numeric digits.

"abcde" -> 0 # no characters repeats more than once
"aabbcde" -> 2 # 'a' and 'b'
"aabBcde" -> 2 # 'a' occurs twice and 'b' twice (`b` and `B`)
"indivisibility" -> 1 # 'i' occurs six times
"Indivisibilities" -> 2 # 'i' occurs seven times and 's' occurs twice
"aA11" -> 2 # 'a' and '1'
"ABBA" -> 2 # 'A' and 'B' each occur twice

PROBLEM:
input: string
output: count of case-insensitive duplicates in given input string

EXAMPLES:
p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2

DATA STRUCTURE:


ALGORITHM:
- intialize a count at 0
- iterate through unique characters of the given string
  - if the count of a given character in the argued string is > 1, iterate the counter
- return the counter

=end

# def duplicate_count(str)
#   count = 0
#   str.downcase.chars.uniq.each { |char| count += 1 if str.downcase.count(char) > 1}
#   count
# end


def duplicate_count(str)
  str.downcase.chars.uniq.each_with_object([]) { |char, arr| arr << char if str.downcase.count(char) > 1}.length
end

p duplicate_count("") == 0
p duplicate_count("abcde") == 0
p duplicate_count("abcdeaa") == 1
p duplicate_count("abcdeaB") == 2
p duplicate_count("Indivisibilities") == 2