# double_char2.rb

=begin

Write a method that takes a string, and returns a new string in which 
every consonant character is doubled. Vowels (a,e,i,o,u), digits, 
punctuation, and whitespace should not be doubled.


double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""


PROBLEM:
input: string
output: string where consonants are doubled

EXAMPLES:
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

DATA STRUCTURE:

ALGORITHM:
- create an empty string to hold the final result
- iterate through the argued string
- if the character is not a vowel or non-alpha char (its a consonant)
  - add it twice to the result string
- otherwise add it once to the result string
- return the result string


=end

# def double_consonants(str)
#   result = ""
#   str.each_char do |char|
#     if char.match?(/[A-Za-z]/) && !%w(a e i o u).include?(char)
#       2.times {result << char}
#     else
#       result << char
#     end
#   end
#   result
# end


def double_consonants(str)
  result = ""
  str.each_char do |char|
    if char.match?(/[^A-Za-z]/) || %w(a e i o u).include?(char)
      result << char
    else
      2.times {result << char}
    end
  end
  result
end



p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""