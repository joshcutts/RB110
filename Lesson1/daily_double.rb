=begin

Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character. You may not use String#squeeze or String#squeeze!.

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

Problem:
input: string object 
output: original string object with duplicates removed

implicit: string may contain integers or string characters
  -maintaining string order
  -duplications must be immediately next to each other
  -maintain spacing
explicit: mutating the original string 

Examples:
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

Data structures:
-string input 
  -utilize an ordered array for iterative comparison
-output original string 

Algorithm:
- initalize a new string
- iterate through the string provided, one character at a time with index
  - if it is the first character, (0 index) add the character to the new string
  - otherwise, if the current character is NOT equal to the last character (index-1)
    -add the current character to the new string
  -return the new string


Algorithm2:
- initialize a new string
- iterate through the string, one char at a time with index
- if the current_character is not equal the next character, add to new result string
- if it is the last character of the string, add to the new string

=end

# def crunch(string)
#   crunched_string = ""
#   string.each_char.with_index do |char, index|
#     if char != string[index+1]
#       crunched_string << char
#     elsif index == string.length-1
#       crunched_string << char
#     end
#   end
#   crunched_string
# end

# def crunch(string)
#   crunched_string = ""
#   string.each_char.with_index do |char, index|
#     if index == 0
#       crunched_string << char
#     elsif char != string[index-1]
#       crunched_string << char
#     end
#   end
#   crunched_string
# end



p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''
