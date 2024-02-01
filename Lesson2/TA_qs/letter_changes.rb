=begin
  
ALGORITHM:
- create a new empty string to hold the result
- iterate through the string
- create 
- if the character is a alpha character
  - find the index of the current letter in the alphabet constant
  - add the third letter following it in the alphabet to the string result
- otherwise
  - add the character to the string result


=end

ALPHABET = ("a".."z").to_a + ("A".."Z").to_a
p ALPHABET

def letter_changes(string)
  result_string = ""
  string.chars do |char|
    if !!char.match(/[A-Za-z]/)
      alpha_index = ALPHABET.index(char)
      if alpha_index + 3 >= 26
        alpha_index = alpha_index + 3 - 26
      else
        alpha_index += 3
      end
      new_char = char == char.upcase ? ALPHABET[alpha_index].upcase : ALPHABET[alpha_index]
      # p "alpha_index #{alpha_index} char #{char} new_char #{ALPHABET[alpha_index]}"
      result_string << new_char
    else
      result_string << char
    end
  end
  result_string
end

# p !!"a".match(/[A-Za-z]/)
# p !!"-".match(/[A-Za-z]/)
# p ALPHABET.index("a")

p letter_changes("this long cake@&") == "wklv orqj fdnh@&"
p letter_changes("Road trip9") == "Urdg wuls9"
p letter_changes("EMAILZ@gmail.com") == "HPDLOC@jpdlo.frp"
p letter_changes('xyz') == ('abc')