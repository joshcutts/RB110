#rot13.rb

=begin

ROT13 is a simple letter substitution cipher that replaces 
a letter with the letter 13 letters after it in the alphabet.
ROT13 is an example of the Caesar cipher.

Create a function that takes a string and returns the string 
ciphered with Rot13. If there are numbers or special characters 
included in the string, they should be returned as they are. Only
letters from the latin/english alphabet should be shifted, like 
in the original Rot13 "implementation".


p rot13("test") == "grfg"
p rot13("Test") == "Grfg"
p rot13("abcdefghijklmnopqrstuvwxyz") == "nopqrstuvwxyzabcdefghijklm"
p rot13("Codewars") == "Pbqrjnef"
p rot13("Ruby is cool!") == "Ehol vf pbby!"
p rot13("10+2 is twelve") == "10+2 vf gjryir"

PROBLEM:
input: string
output: new string, with charactrs shifted 13 letters

what happens if the alphabet reaches 26
shift only alpha characters, leave non-alpha characters alone

EXAMPLES:
p rot13("test") == "grfg"
p rot13("Test") == "Grfg"
p rot13("abcdefghijklmnopqrstuvwxyz") == "nopqrstuvwxyzabcdefghijklm"
p rot13("Codewars") == "Pbqrjnef"
p rot13("Ruby is cool!") == "Ehol vf pbby!"
p rot13("10+2 is twelve") == "10+2 vf gjryir"

DATA STRUCTURE:
constant array with lowercase alpha letters

ALGORITHM:
- initialize empty string to hold rotated string
- iterate through the string one character at a time
- initialze uppercase variable to false
  - if the character is an alpha character  
    - find the index in the alpha constant (downcase) that the current character is
    - if the character is uppercase, update a boolean variable to true
    - add 13 to that index
    - if the index is > 26, subtract 26 from the index
    - if uppercase boolean is true
      - add the new character UPPERCASE character from the modified index from the alpha constant
    - otherwise add the lowercase character
  - otherwise add the character to return string
- =return the shifted string

=end

ALPHABET = ("a".."z").to_a

def rot13(string)
  rotated_string = ""
  string.each_char do |char|
    uppercase = false
    if char.match(/[A-Za-z]/)
      alpha_index = ALPHABET.index(char.downcase)
      uppercase = true if char == char.upcase
      
      if alpha_index + 13 >= 26
        alpha_index = alpha_index + 13 - 26
      else
        alpha_index += 13
      end

      if uppercase
        rotated_string << ALPHABET[alpha_index].upcase
      else
        rotated_string << ALPHABET[alpha_index]
      end
    else
      rotated_string << char
    end
  end
  rotated_string
end




p rot13("test") == "grfg"
p rot13("Test") == "Grfg"
p rot13("abcdefghijklmnopqrstuvwxyz") == "nopqrstuvwxyzabcdefghijklm"
p rot13("Codewars") == "Pbqrjnef"
p rot13("Ruby is cool!") == "Ehol vf pbby!"
p rot13("10+2 is twelve") == "10+2 vf gjryir"