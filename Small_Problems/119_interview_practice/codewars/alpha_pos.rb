=begin

PROBLEM:
input: string
output: string with numbers of character positions

ignore non-letters

EXAMPLES:
p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
p alphabet_position("-.-'") == ""

DATA STRUCTURE:
strings

ALGORITHM:
- create hash with characters & corresponding position in alphabet
- create empty array to hold result
- remove any non letters from the string
- iterate through the modified string one char at a time
  - add the corresponding numeral (converted to string) to results array
- join the results array with spaces and return


=end

alpha = ("a".."z").to_a
nums = (1..26).to_a.map(&:to_s)
ALPHA_TO_NUMS = alpha.zip(nums).to_h

def alphabet_position(str)
  result = []
  str.gsub!(/[^A-Za-z]/, "")
  str.downcase!

  str.each_char do |char|
    result << ALPHA_TO_NUMS[char]
  end
  result.join(" ")
end


p alphabet_position("The sunset sets at twelve o' clock.") == "20 8 5 19 21 14 19 5 20 19 5 20 19 1 20 20 23 5 12 22 5 15 3 12 15 3 11"
p alphabet_position("-.-'") == ""