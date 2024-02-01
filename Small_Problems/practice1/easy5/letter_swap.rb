=begin

Given a string of words separated by spaces, write a method that takes this string 
of words and returns a string in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter, and that the string 
will always contain at least one word. You may also assume that each string contains 
nothing but words and spaces.

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

=end

=begin

PROBLEM:
input: string
output: new string, with each word in the string that has the first & last characters swapped

EXAMPLES:
p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

DATA STRUCTURE:
words into an array

ALGORITHM:
- create an array of words
- for each word in the array
  - swap the 1st & last characters
- join the words array into a new string and return it


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