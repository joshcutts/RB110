# Find the missing letter
# Write a method that takes an array of consecutive (increasing) letters as input and that returns the missing letter in the array.
#
# You will always get an valid array. And it will be always exactly one letter be missing. The length of the array will always be at least 2.
#
# The array will always contain letters in only one case.

# Example:
#
# ['a','b','c','d','f'] -> 'e'
# ['O','Q','R','S'] -> 'P'

# Use the English alphabet with 26 letters.

=begin

PROBLEM:
input: array of alphabetical characters
output: a single character. The character that is missing from the array that is in the alphabet

implicit: all the characters will be the same case but can be uppercase or lowercase
will have at least 2 elements in the input array
earliest 1st missing character is what would be the second element

explicit: will always be 1 missing character

EXAMPLES:
p find_missing_letter(["a","b","c","d","f"]) == "e"
p find_missing_letter(["O","Q","R","S"]) == "P"
p find_missing_letter(["b","d"]) == "c"
p find_missing_letter(["a","b","d"]) == "c"
p find_missing_letter(["b","d","e"]) == "c"

DATA STRUCTURE:
["a","b","c","d","f"]
index 0: a
alphabet_index = 0
alphabet_index + 1 == index + 1

p find_missing_letter(["b","d"]) == "c"
index 0: "b"
alpha_index(b) = 1

index 1 == alpha[alpha_index+1]

ALGORITHM:
- create a constant for the alphabet that has all lowercase characters of the alphabet in an array
- iterate through the given array
  - for each index, find the index in the ALPHABET constant array
  - if the character at the next index of the array (downcased) is not equal to the next character in the alphabet
    - return that character from the alphabet (uppercased if the character in the array is uppercased)
end

=end

ALPHABET = ("a".."z").to_a

def find_missing_letter(arr)
  arr.each_with_index do |letter, index|
    alpha_index = ALPHABET.index(letter.downcase)
    if arr[index+1] != ALPHABET[alpha_index+1].downcase
      missing_letter = letter == letter.upcase ? ALPHABET[alpha_index+1].upcase : ALPHABET[alpha_index+1]
      return missing_letter
    end
  end
end

p find_missing_letter(["a","b","c","d","f"]) == "e"
p find_missing_letter(["O","Q","R","S"]) == "P"
p find_missing_letter(["b","d"]) == "c"
p find_missing_letter(["a","b","d"]) == "c"
p find_missing_letter(["b","d","e"]) == "c"

