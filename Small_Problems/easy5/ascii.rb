# ascii.rb

=begin

PROBLEM:
input: string
output: sum of every ASCII value in the string

explicit: output integer value of sum of ASCII values in the given input string
if string is empty return 0
implicit: don't need to handle any values outside of ascii

EXAMPLES:
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

DATA STRUCTURE:
maybe array to iterate through the string or just directly iterate through the string

ALGORITHM:

iterate through the string one character at a time
use string#ord to find the ascii value for each character
sum each ascii value on each iteration
return the summed ascii value

=end

# def ascii_value(string)
#   string.chars.inject(0) {|sum, char| sum += char.ord}
# end

def ascii_value(string)
  string.chars.sum(&:ord)
end
p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0