# reverse_it2.rb


=begin

Write a method that takes one argument, a string containing one or more 
words, and returns the given string with words that contain five or more 
characters reversed. Each string will consist of only letters and spaces. 
Spaces should be included only when more than one word is present.

PROBLEM:
input: string
output: string with words from the original string reversed if wthe string is longer than 5 characters


EXAMPLES:
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

DATA STRUCTURE:
array of words

ALGORITHM:
- iterate through the array of words
- if the word is longer than 5 characters, reverse it
- otherwise keep it the same
- return the new string


=end


def reverse_words(str)
  str.split.map do |word|
    if word.length >= 5
      word.reverse
    else
      word
    end
  end.join(' ')
end


puts reverse_words('Professional') == "lanoisseforP"
puts reverse_words('Walk around the block') == "Walk dnuora the kcolb"
puts reverse_words('Launch School') == "hcnuaL loohcS"