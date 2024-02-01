=begin

Write a method that takes a string as an argument 
and returns a new string in which every uppercase letter 
is replaced by its lowercase version, and every lowercase 
letter by its uppercase version. All other characters should be unchanged.

PROBLEM:
input: string
output: string with cases swapped
lowercase changed to uppercase & uppercase changed to lowercase

EXAMPLES:
swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

DATA STRUCTURE:



ALGORITHM:
- create an empty string to hold the final result
- iterate through the string one character at a time
- if the character is not alpha
  - add it to the result string
- otherwise
  - if the uppercase version of the character is the same as the character
    - take the lowercase version of the character and add it to the result string
  - otherwise
    - add the uppercase version of the character to the result string
- return the result string

=end

# def swapcase(str)
#   result = ""
#   str.each_char do |char|
#     if char.match?(/[^A-Za-z]/)
#       result << char
#     else
#       if char.upcase == char
#         result << char.downcase
#       else
#         result << char.upcase
#       end
#     end
#   end
#   result
# end


def swapcase(str)
  result = ""
  str.each_char do |char|
    if char.match?(/[^A-Za-z]/)
      result << char
    else
      char.upcase == char ? (result << char.downcase) : (result << char.upcase)
    end
  end
  result
end


p swapcase('CamelCase') == 'cAMELcASE'
p swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'

# p "-".match?(/[^A-Za-z]/)