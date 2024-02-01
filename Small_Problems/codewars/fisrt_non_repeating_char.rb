# first_non_repeating_char.rb

=begin
https://www.codewars.com/kata/52bc74d4ac05d0945d00054e/ruby

Write a function named first_non_repeating_letter that takes a string input, and returns the first character that is not repeated anywhere in the string.

For example, if given the input 'stress', the function should return 't', since the letter t only occurs once in the string, and occurs first in the string.

As an added challenge, upper- and lowercase letters are considered the same character, but the function should return the correct case for the initial letter. For example, the input 'sTreSS' should return 'T'.

If a string contains all repeating characters, it should return an empty string ("") or None -- see sample tests.

p first_non_repeating_letter('a') == 'a'
p first_non_repeating_letter('stress') == 't'
p first_non_repeating_letter('moonmen') == 'e'
p first_non_repeating_letter('') == ''
p first_non_repeating_letter('sTreSS') == 'T'


=end


=begin

PROBLEM:
input: string
output: string which is the first character that doesn't repeat
first uniq character in the string,

explicit: case doesn't matter when considering a character, however should return the correct case from the string


EXAMPLES:
p first_non_repeating_letter('stress') == 't')

DATA STRUCTURE:

{
  "s" => [3, [0, 4, 5]]
  "t" => [1, [1]]
  "r" => [1, [2]]
  "e" => [1, [3]]
}

ALGORITHM:
- create empty hash to keep track of letter counts
- iterate through the string and keep track of index
  - for each unique letter (ignore case: ie T == t), create new key with count & array of indexes as values
  - for repeat letter increment count and add array index
- select from count hash letter counts with only 1 character
- select the lowest index letter count
- use the lowest index to return the letter from the original string

=end

def first_non_repeating_letter(string)
  return '' if string.empty?
  letter_count = {}
  string.each_char.with_index do |char, index|
    if letter_count.keys.include?(char.downcase)
      letter_count[char.downcase][0] += 1
      letter_count[char.downcase][1] << index 
    else
      letter_count[char.downcase] = [1, [index]]
    end
  end
  letter_count_one = letter_count.select {|key, value| value[0] == 1}
  return "" if letter_count_one.empty?
  first_index = letter_count_one.values.map {|value| value[1][0]}.min
  string[first_index]
end



p first_non_repeating_letter('a') == 'a'
p first_non_repeating_letter('stress') == 't'
p first_non_repeating_letter('moonmen') == 'e'
p first_non_repeating_letter('') == ''
p first_non_repeating_letter('sTreSS') == 'T'
p first_non_repeating_letter("aaaaaaa") == ''
p first_non_repeating_letter("abba") == ''
p first_non_repeating_letter('sTreSSt') == 'r'