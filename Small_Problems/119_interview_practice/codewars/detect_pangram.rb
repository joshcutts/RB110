# detect_pangram.rb

=begin


A pangram is a sentence that contains every single letter of the alphabet at least once. 
For example, the sentence "The quick brown fox jumps over the lazy dog" is a pangram, because 
it uses the letters A-Z at least once (case is irrelevant).

Given a string, detect whether or not it is a pangram. Return True if it is, False if not. 
Ignore numbers and punctuation.


PROBLEM:
input: string of alpha characters
output: boolean if the string is a pangram (contains all letters of alphabet)

case is irrelevant
contains each char of the alphabet at least once (can be more than once)
ignore punctuation

EXAMPLES:
p pangram?("The quick brown fox jumps over the lazy dog.") == true
p pangram?("This is not a pangram.") == false

DATA STRUCTURE:
tally counts of characters into hash

ALGORITHM:
- remove non alpha characters from the string & downcase all characters
- create array of characters and select unique characters
- sort the array of characters
- if the arary is equal to the array of alphabet then return true


=end

def pangram?(str)
  str.gsub!(" ", "")
  str.gsub!(".", "")
  str.downcase!
  str.split("").uniq.sort == ("a".."z").to_a
end


p pangram?("The quick brown fox jumps over the lazy dog.") #== true
p pangram?("This is not a pangram.") == false

