# missing_alphabet.rb

=begin
https://www.codewars.com/kata/5ad1e412cc2be1dbfb000016
PROBLEM:
input: string, all lowercase, all alpha characters
output: new string, with uppercase alphabet characters inserted after every character

EXAMPLES:
insert_missing_letters("hello") == "hIJKMNPQRSTUVWXYZeFGIJKMNPQRSTUVWXYZlMNPQRSTUVWXYZloPQRSTUVWXYZ")

DATA STRUCTURE:
input: string
output: new inserted string

ALGORITHM:
- create an uppercase alphabet constant from A-Z
- create a new empty string to hold result
- iterate through the characters in the string
  - add character to empty string
  - determine index in alphabet of the character
  - append the remaining letters in the uppercase alphabet
- return the new string

=end


def insert_missing_letters(string)
  alphabet = ("A".."Z").to_a
  inserted_string = ""
  string.each_char do |char|
    alpha_index = alphabet.index(char.upcase)
  insert_alphabet = true unless inserted_string.include?(char)
    inserted_string << char
    if insert_alphabet
      alphabet[alpha_index+1..-1].each do |alpha_char|
        inserted_string << alpha_char unless string.include?(alpha_char.downcase)
      end
    end
  end
  inserted_string
end

p insert_missing_letters("hello") == "hIJKMNPQRSTUVWXYZeFGIJKMNPQRSTUVWXYZlMNPQRSTUVWXYZloPQRSTUVWXYZ"