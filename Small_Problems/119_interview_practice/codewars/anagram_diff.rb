
=begin

PROBLEM:
input: string
output: number of characters that need to be removed to make each given

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




high level:
- find the anagram
  - iterate through the smaller string, one char at a time
    - if the character exists in the larger string, add to an anagram variable
    - remove the character from a copy of str 2
- (length of string 1 - anagram string length) + (length of string 2 - anagram string length)

ALGORITHM:


=end

def anagram_difference(s1, s2)
  arr = [s1, s2].sort_by(&:length)
  smaller = arr[0].chars
  larger = arr[1].chars
  anagram = []
  smaller.each do |char|
    if larger.include?(char)
      anagram << char
      i = larger.index(char)
      larger.delete_at(i)
    end
  end
  (s1.length - anagram.length) + (s2.length - anagram.length)
end

p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0 # are anagrams
p anagram_difference('ab', 'cd') == 4 # no anagrams
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10