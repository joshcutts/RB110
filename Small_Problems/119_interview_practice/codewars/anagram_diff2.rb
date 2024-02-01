=begin


https://www.codewars.com/kata/5b1b27c8f60e99a467000041/train/ruby

Given two words, how many letters do you have to remove from them to make them anagrams?

- A word is an anagram of another word if they have the same letters (usually in a different order).
- Do not worry about case. All inputs will be lowercase.

Examples

- First word : c od e w ar s (4 letters removed)
- Second word : ha c k er r a nk (6 letters removed)
- common: cear
- Result : **10**


p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10

PROBLEM:
input: 2 strings
output: count of number of characters from the two given strings combined,
which will result in anagram from the two strings

anagram is word that has the same letters

EXAMPLES:
p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10

DATA STRUCTURE:



ALGORITHM:
- find the shorter string and the longer string
- create an empty array to hold anagram
- iterate through the shorter string (as an array) one character at a time, with index
  - if the character is present in the longer string
    - add the character to anagram array
    - remove the character from the longer string (as an array)
- return string1 length - anagram length + string2 length - anagram length

=end


def anagram_difference(str1, str2)
  arr = [str1, str2].sort
  shorter = arr[0].split("")
  longer = arr[1].split("")
  anagram = []
  shorter.each_with_index do |char, index|
    if longer.include?(char)
      anagram << char
      i = longer.index(char)
      longer.delete_at(i)
    end
  end
  (str1.length - anagram.length) + (str2.length - anagram.length)
end


p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10