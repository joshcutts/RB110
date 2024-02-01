=begin

A string is considered to be in title case if each word in the string is either 
(a) capitalised (that is, only the first letter of the word is in upper case) 
or (b) considered to be an exception and put entirely into lower case unless it 
is the first word, which is always capitalised.

Write a function that will convert a string into title case, given an optional list of 
exceptions (minor words). The list of minor words will be given as a string with each 
word separated by a space. Your function should ignore the case of the minor words 
string -- it should behave in the same way even if the case of the minor word string is changed.


PROBLEM:
input: 2 strings
1) string to be title cased (first letter of each word capitlized except minor words) *
  except 1st word which is always capitalized
2) list of optional minor words which should be ignored

EXAMPLES:
p title_case('') == ''
p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'
p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'
p title_case('the quick brown fox') == 'The Quick Brown Fox'

DATA STRUCTURE
arrays of the string to title case & minor words string

ALGORITHM:
- create empty result array
- convert title case string and minor words string to arrays
- iterate through the title case string with index
- if it is the first word in the string
  - add capitalized word to result array
- if it is not a minor word
  - add capitalized word to result array
- othewise
  - add word lowercase to array 
- return array joined with spaces

=end

def title_case(title, minor="")
  result = []
  title_arr = title.downcase. split(" ")
  minor_arr = minor.downcase.split(" ")
  
  title_arr.each_index do |index|
    if index == 0
      result << title_arr[0].capitalize
    elsif !minor_arr.include?(title_arr[index])
      result << title_arr[index].capitalize
    else
      result << title_arr[index]
    end
  end
  result.join(" ")
end

p title_case('') == ''
p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'
p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'
p title_case('the quick brown fox') == 'The Quick Brown Fox'