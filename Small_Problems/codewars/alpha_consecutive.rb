=begin
Given a string, create a method that adds the entire capital alphabet to each letter. 
However, the alphabet added must be conscutive or the next alphabet to the letter.
i.e e = efghi..z
the alphabets added to the letter must not contain any alphabets that exist in the string

p bigger_string("hello") == "hIJKMNPQRSTUVWXYZeFGIJKMNPQRSTUVWXYZlMNPQRSTUVWXYZloPQRSTUVWXYZ"

=end

=begin

PROBLEM: 
input- string
output - longest substring with characters in alphabetical order
repeated characters that are the same count towards the total length

implicit: all strings have only lowercase letters

EXAMPLES:
p longest_string("abcdqrstuvwxyz") == "qrstuvwxyz"
p longest_string("aboprsss") == "rsss"
p longest_string("aboprs") == "rs"
p longest_string("abdffffff") == "ffffff"
p longest_string("accdefg") == "ccdefg"

DATA STRUCTURE:
"abcdqrstuvwxyz"

ALGORITHM:
- max_substring initialized at nil
- create an array of all possible substrings
  - start at 0 index and take substring of increasing length
  - then move to next index
- iterate through that array of substrings
  - iterate through each substring
  - check if the substring characters are in consecutive alphabetical order
    - iterate through the substring with index
      - if all the next characters in the substring are the same as the next character in the alphabet or the same as the current character, then this is a consecutive alpha order substring
        - If the consecutive alpha order substring length is greater than current max_substring length . replace the max substring 
- return the max substring
=end

def find_substrings(string)
  substrings = []
  max_length = (string.length) - 1
  (0..max_length).each do |start_index|
    max_substring_length = string.length - start_index
    (1..max_substring_length).each do |length|
      substrings << string[start_index, length]
    end
  end
  substrings
end

ALPHABET = ("a".."z").to_a

def longest_string(string)
  max_alpha_consec_substring = ""
  substrings = find_substrings(string)
  
  substrings.each do |substring| 
    bool_array = []
    # p "SUBSTRING #{substring}"
    # substring.chars.each_with_index do |char, index|
    (0..substring.length-2).each do |index|
      alphabet_index = ALPHABET.index(substring[index])
      if substring[index + 1] == ALPHABET[alphabet_index + 1] || substring[index + 1] == substring[index]
        # p "#{substring[index+1]} #{ALPHABET[alphabet_index+1]}"
        bool_array << true
      else
        # p "NOT MATCHED #{substring[index+1]} #{ALPHABET[alphabet_index+1]}"
        bool_array << false
      end
    end
    if bool_array.all?
      max_alpha_consec_substring = substring if substring.length > max_alpha_consec_substring.length
    end
  end
  max_alpha_consec_substring
end

p longest_string("abcdqrstuvwxyz") == "qrstuvwxyz"
p longest_string("aboprsss") == "rsss"
p longest_string("aboprs") #== "rs"
p longest_string("abdffffff") == "ffffff"
p longest_string("accdefg") == "ccdefg"