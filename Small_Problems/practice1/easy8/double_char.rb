=begin

Write a method that takes a string, and returns a new string in 
which every character is doubled.

PROBLEM:
input: str
output: modified string where each character of the original string is doubled

EXAMPLES:
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

DATA STRUCTURE:
strings

ALGORITHM:
- create an empty string to hold the final result
- iterate through the given string one character at a time
  - add the given character 2 times to the result string
- return the result string


=end

def repeater(str)
  result = ""
  str.each_char do |char|
    2.times {result << char}
  end
  result
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''