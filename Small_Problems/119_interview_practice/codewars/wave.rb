# wave.rb

=begin

In this simple Kata your task is to create a function that turns a string 
into a Mexican Wave. You will be passed a string and you must return that 
string in an array where an uppercase letter is a person standing up. 


 1.  The input string will always be lower case but maybe empty.

 2.  If the character in the string is whitespace then pass over it as if 
 it was an empty seat


p wave("hello") => ["Hello", "hEllo", "heLlo", "helLo", "hellO"]

PROBLEM:
input: string
output: array of strings, length of string long (- any blank spaces)

DATA STRUCTURE:
array

ALGORITHM:
- create an empty array to hold result
- convert string to an array of characters
- iterate through the characters in array with index
  - go to next char is the char is a " "  
  - uppercase the index position character, join to form string, push to results array
- return the results array

=end

# def wave(str)
#   result = []
#   str.each_char.with_index do |char, i|
#     next if char == " "
#     if i == 0
#       result << str[i].upcase + str[i+1..-1]
#     else
#     result << str[0..i-1] + str[i].upcase + str[i+1..-1]
#     end
#   end
#   result
# end


def wave(str)
  result = []
  (0...str.length).each do |i|
    result << str[0...i] + str[i].upcase + str[i+1..-1]
  end
  result
end


p wave("hello") == ["Hello", "hEllo", "heLlo", "helLo", "hellO"]
