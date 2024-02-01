#alpha_substring.rb


=begin

Find the longest substring in alphabetical order.

Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".

There are tests with strings up to 10 000 characters long so your code will need to be efficient.

The input will only consist of lowercase characters and will be at least one letter long.

If there are multiple solutions, return the one that appears first.

PROBLEM:
input: string
output: longest substring that is in alphabetical order (sorted)

EXAMPLES:
p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') == 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') == 'fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'

DATA STRUCTURE:
substrings in an array

ALGORITHM:
- generate substrings
  - outer loop to control and move through start index
    - inner loop to move through length from 1
- iterate through the strings and select those that are in alphabetical order
  - those that are the same as the sorted array
- select the longest of those selected substrings (those that are in alpha order)

=end

def generate_substrings(str)
  substrings = []
  (0...str.length).each do |start|
    max = str.length - start
    (1..max).each do |length|
      substrings << str[start, length]
    end
  end
  substrings
end

def longest(str)
  substrings = generate_substrings(str)
  substrings.select {|substring| substring.chars.sort.join("") == substring}.max_by(&:length)
end

p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') == 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') == 'fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'