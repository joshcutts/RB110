=begin

Write a method that takes a string with one or more space separated words 
and returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

=end

=begin

PROBLEM:
input: string (words separated by spaces)
output: hash where the keys are the character count of words & values are the occurence in the string

EXAMPLES:
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

DATA STRUCTURES:


ALGORITHM:
- split the string into an array of words
- create an empty hash
- iterate from 1 to the max length of a word in the words array
  - count the number of words that are of the particular length
  - add to the hash if count > 0
- return the hash


=end

# def word_sizes(string)
#   return {} if string.empty?
#   words = string.split(" ")
#   word_sizes_hash = {}
#   max_length = words.max_by(&:length).length

#   (1..max_length).each do |l|
#     count = words.count { |word| word.length == l }
#     word_sizes_hash[l] = count if count > 0
#   end
#   word_sizes_hash
# end

# def word_sizes(string)
#   counts = Hash.new(0)
#   words = string.split(" ")
#   words.each do |word|
#     counts[word.length] += 1
#   end
#   counts
# end

def word_sizes(string)
  string.split(" ").map(&:length).tally
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}