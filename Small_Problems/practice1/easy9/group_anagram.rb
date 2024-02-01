# group_anagram.rb

=begin

Write a program that prints out groups of words that are anagrams. 
Anagrams are words that have the same exact letters in them but in a different order. Your output should look something like this:

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

PROBLEM:
input: array of strings which are words
output: nested array of arrays, where each subarray is composed of string which are anagrams

EXAMPLES:
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

["demo", "dome", "mode"]
["neon", "none"]
#(etc)

DATA STRUCTURE:
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']


ALGORITHM:
- create empty array to hold all subarrays of separate anagrams
- iterate through the words array one word at a time
  - iterate through the words array again
    - create an empty array to hold results for single anagram
    - if the current word from the outer iteration is not the current word from the inner iteration && the word is not present in the flatten final array
      - check if the current inner word is an anagram of the outer word iteration
        - if the sorted inner word is equal to the sorted outer word
        - add it to the array for anagram
    - push the anagram array to result array
- return the results array

=end

def group_anagram(words)
  all_anagrams = []
  words.each do |outer_word|
    single_anagram = [outer_word]
    words.each do |inner_word|
      if outer_word != inner_word && !all_anagrams.flatten.include?(inner_word)
        single_anagram << inner_word if outer_word.split("").sort == inner_word.split("").sort
      end
    end
    all_anagrams << single_anagram if single_anagram.length > 1
  end
  all_anagrams
end


words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']

p group_anagram(words)




