# weird_case.rb

=begin

Write a function that accepts a string, and returns the same string with all even indexed 
characters in each word upper cased, and all odd indexed characters in each word lower cased. 
The indexing just explained is zero based, so the zero-ith index is even, therefore that character 
should be upper cased and you need to start over for each word.

The passed in string will only consist of alphabetical characters and spaces(' '). 
Spaces will only be present if there are multiple words. Words will be separated by a single space(' ').

PROBLEM:
input: string
output: modified string where even index is uppercase and odd index is lowercase (includes spaces in numbering)


EXAMPLES:
p weirdcase('This') == 'ThIs'
p weirdcase('is') == 'Is'
p weirdcase('This is a test') == 'ThIs Is A TeSt'

DATA STRUCTURE:


ALGORITHM:
- iterate through the characters of the string with index
  - if the index is odd, add the lowercase version to array
  - otherwise add the uppercase version to array
- join and return array

=end

def weirdcase(str)
  words = str.split(" ")
  words.map do |word|
    word.chars.map.with_index do |char, index|
      index.odd? ? char.downcase : char.upcase
    end.join("")
  end.join(" ")
end

p weirdcase('This') == 'ThIs'
p weirdcase('is') == 'Is'
p weirdcase('This is a test') == 'ThIs Is A TeSt'

p "This is a test".split(/\b/)