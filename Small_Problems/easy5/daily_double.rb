# daily_double.rb

=begin

PROBLEM:
input - string with some consecutive characters duplicated
output - string with consecutive characters removed

explicit - a character can occur more than once in a string
implicit - 

EXAMPLES:
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

DATA STRUCTURES:


ALGORITHM:
- create empty resultant string
- step through string one character at a time
- if the character in the string at the next index is the same as the current character
  - skip the current character
- otherwise add the current character to a resultant string
- return the resultant string

=end

def crunch(string)
  result = ""
  string.each_char.with_index do |char, index|
    if char == string[index + 1]
      #
    else
      result << char
    end
  end
  result
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''