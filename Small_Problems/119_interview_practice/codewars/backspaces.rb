# backspaces.rb

=begin

Assume "#" is like a backspace in string. 
This means that string "a#bc#d" actually is "bd"

Your task is to process a string with "#" symbols.

"abc#d##c"      ==>  "ac"
"abc##d######"  ==>  ""
"#######"       ==>  ""
""              ==>  ""


PROBLEM:
input: string with #
output: processed string without #
and chars preceding # removed

EXAMPLES:
"abc#d##c"      ==>  "ac"
"abc##d######"  ==>  ""
"#######"       ==>  ""
""              ==>  ""

DATA STRUCTURE:


ALGORITHM:
- create an empty result string to hold final result
- iterate through the characters of the string
  - if the next character is not a # add it to the result string and the current character is not a #
  - otherwise skip the char
- return the result

NEW
- turn string into an array
- while there is a "#" in the array
  - start iterating from the beginning of the string
  - if the next character is "#"
    - delete the character at current index position, and the corresponding #
  - return "" if all the characters in the string are "#"
- return the modified string


=end

# def clean_string(str)
#   arr = str.split("")
  
#   while arr.include?("#")
#     index = 0
#     loop do 
#       if arr[index+1] == "#" && arr[index] != "#"
#         arr.delete_at(index)
#         arr.delete_at(index)
#       end
#       index += 1
#       break if index == str.length-1
#     end
#     return "" if arr.all?("#")
#   end
#   arr.join("")
# end

def clean_string(str)
  output = []
  str.each_char do |char|
    if char == "#"
      output.pop
    else
      output << char
    end
  end
  output.join("")
end



p clean_string('abc#d##c') == "ac"
p clean_string('abc####d##c#') == "" 
p clean_string("abc##d######") == ""
p clean_string("#######") == ""
p clean_string("") == ""



# # def clean_string(str)
# #   result = ""
# #   str.chars.each_index do |index|
# #     if str[index] != "#" && str[index+1] != "#"
# #       result << str[index]
# #     end
# #   end
# #   result
# # end
