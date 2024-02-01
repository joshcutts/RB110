=begin

Write a method that takes a string argument and returns a new string 
that contains the value of the original string with all consecutive
duplicate characters collapsed into a single character. 
You may not use String#squeeze or String#squeeze!.

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

=end

=begin

PROBLEM:
input: string
output: string with duplicate characters removed
cannot use squeeze

EXAMPLES:
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

DATA STRUCTURE:
iterating through characters
have a string holding the result

ALGORITHM:
- create empty result string to hold result
- iterate through the characters of the given string
  - the the current character is the same as the next character do nothing
  - if the current character is not the same as the next character, add to result string
- return the result

=end

def crunch(string)
  result = ""
  string.each_char.with_index do |char, index|
    if char != string[index + 1]
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