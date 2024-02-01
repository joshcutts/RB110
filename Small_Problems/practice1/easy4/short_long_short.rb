=begin

Write a method that takes two strings as arguments, 
determines the longest of the two strings, and then returns 
the result of concatenating the shorter string, the longer string, 
and the shorter string once again. You may assume that the strings are of different lengths.

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

PROBLEM:
input: 2 strings of different lengths
output: concatenation of the shorter string, then the longer string, the the shorter string again

EXAMPLES:
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

DATA STRUCTURE:
['abc', 'defgh']
array[0] + array[1] + array[0]

ALGORITHM
- put the two strings into an array & sort the array by length
- concatenate the first element then the second element, then the first element & return


=end

def short_long_short(str1, str2)
  arr = [str1, str2].sort_by(&:length)
  arr[0] + arr[1] + arr[0]
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"