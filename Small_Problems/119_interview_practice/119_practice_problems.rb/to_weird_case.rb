# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

# Examples:

# p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
#                 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
# p to_weird_case(
#   'It is a long established fact that a reader will be distracted') ==
#   'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
# p to_weird_case('aaA bB c') == 'aaA bB c'
# p to_weird_case(
#   'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
#   'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

# The tests above should print "true".

=begin

PROBLEM:
input: string
output: new string, with every 2nd character in every third word converted to uppercase
other characters should remain the same

EXAMPLES:
p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

DATA STUCTURES:
'Lorem Ipsum is simply dummy text of the printing'
'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'


ALGORITHM:
- create an empty string to hold the result
- create an array of words (separated by spaces) from the given string
- iterate through the array of words with index
  - if the index + 1 is evenly divisible by 3
    - iterate through the word with index
      - initialize a new word variable that is an empty string  
      - if the index is odd make the current character uppercase and add it to the empty new word string
      - otherwise add the character to the new word string
    - push the string to the empty string for result
  - else push the word to the empty string for result
- return the result string

=end

def to_weird_case(string)
  result_array = []
  words = string.split(" ")

  words.each_with_index do |word, index|
    new_word = ""
    if (index + 1) % 3 == 0
      word.chars.each_with_index do |char, index|
        if index.odd?
          new_word << char.upcase
        else
          new_word << char
        end
      end
      result_array << new_word
    else
      result_array << word
    end
  end
  result_array.join(" ")
end




p to_weird_case('Lorem Ipsum is simply dummy text of the printing') ==
                'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case(
  'It is a long established fact that a reader will be distracted') ==
  'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case(
  'Miss Mary Poppins word is supercalifragilisticexpialidocious') ==
  'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'