=begin

Write a method that determines and returns the ASCII string value of a
 string that is passed in as an argument. 
 The ASCII string value is the sum of the ASCII values of every character in the string. 
(You may use String#ord to determine the ASCII value of a character.)

ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

=end

=begin

PROBLEM:
input: string
output: integer which is the sum of the ascii values of every character in the string

EXAMPLES: 
ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

DATA STRUCTURE:
none required, will iterate through the string, adding the ascii values

ALGORITHM:
- iterate through the string, summing the ascii values by calling ord on each character

=end

def ascii_value(str)
  str.chars.inject(0) {|sum, char| sum += char.ord}
end

# def ascii_value(str)
#   str.chars.map {|char| char.ord}.sum
# end

# def ascii_value(str)
#   sum = 0
#   str.each_char {|char| sum += char.ord}
#   sum
# end


p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0

p "H".ord.chr