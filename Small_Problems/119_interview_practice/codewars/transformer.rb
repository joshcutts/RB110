# transformer.rb

=begin
Given a string, return a new string that has transformed based on the input:

Change case of every character, ie. lower case to upper case, upper case to lower case.
Reverse the order of words from the input.

"Example Input" ==> "iNPUT eXAMPLE"

PROBLEM:
input: string
output: modified string
1) change case of every character in the given string from up to down and down to up
2) reverse the order of words

EXAMPLES:

p string_transformer("Example string") = "STRING eXAMPLE"


DATA STRUCTURE:
array of words
"Example  string"

eXAMPLE  

string

ALGORITHM:
- split the given string to words on spaces
  - iterate through each word and reverse cases
- reverse the array
- join and return the array

treat spaces as a word
- create empty array to hold result
- iterate through the characters in the string
- word = ""
  - if alpha char add to word
  - if next char is not alpha push to result array
  - if char is space add to word
  - if next char is not a space, add to result
- reverse the result array and join("")

=end

# def string_transformer(str)
#   str.split.map do |word|
#     word.chars.map do |char|
#       char == char.upcase ? char.downcase : char.upcase
#     end.join("")
#   end.reverse.join(" ")
# end

# def string_transformer(str)
#   result = []
#   word = ""
#   (0...str.length).each do |index|
#     char = str[index]
#     if char.match?(/[A-Za-z]/)
#       word << (char == char.upcase ? char.downcase : char.upcase)
#       if str[index+1] && str[index+1].match?(" ")
#         result << word
#         word = ""
#       elsif index == str.length-1
#         result << word
#       end
#     else
#       word << char
#       if str[index+1] && str[index+1].match(/[A-Za-z]/)
#         result << word
#         word = ""
#       elsif index == str.length-1
#         result << word
#       end
#     end
#   end
#   result.reverse.join("")
# end

def string_transformer(str)
  str.swapcase.split(/\b/).reverse.join("")
end

p string_transformer("  Example  string  ") #== "STRING  eXAMPLE"
