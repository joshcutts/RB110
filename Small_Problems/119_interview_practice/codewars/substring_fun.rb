=begin

Complete the function that takes an array of words.

You must concatenate the nth letter from each word to construct a new word which should be returned as a string, where n is the position of the word in the list.

For example:

["yoda", "best", "has"]  -->  "yes"
  ^        ^        ^
  n=0     n=1     n=2


PROBLEM:
input: array of strings
output: string
where string is constructed from nth letters of the given strings in the arrya

EXAMPLES:
p nth_char(['yoda', 'best', 'has']) == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No','No']) == 'No'
p nth_char(['Chad','Morocco','India','Algeria','Botswana','Bahamas','Ecuador','Micronesia']) == 'Codewars'


DATA STRUCTURE:
["yoda", "best", "has"]  -->  "yes"
  ^        ^        ^
  n=0     n=1     n=2


ALGORITHM:
- initialize an empty string which will hold the final result
- iterate through the array using index
  - for each string element, add the character at that index to the result string
- return the result string



=end

def nth_char(arr)
  result = ""
  arr.each_index do |i|
    result << arr[i][i]
  end
  result
end


p nth_char(['yoda', 'best', 'has']) == 'yes'
p nth_char([]) == ''
p nth_char(['X-ray']) == 'X'
p nth_char(['No','No']) == 'No'
p nth_char(['Chad','Morocco','India','Algeria','Botswana','Bahamas','Ecuador','Micronesia']) == 'Codewars'