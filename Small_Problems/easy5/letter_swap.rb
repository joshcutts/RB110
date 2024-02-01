# letter_swap.rb

=begin

PROBLEM:
input: string
output: string with the first letter and last letter swapped

explicit: every string contains at least one "word" (separated by space)
implicit: 

EXAMPLES:
swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

DATA STRUCTURE:


ALGORITHM:
create an array of words
iterate through the array one word at a time
swap the first and last letters of each word
return the new string with words that have 1st and last letter swapped


=end


def swap(string)
  words = string.split(" ")
  words.map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end.join(" ")
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'