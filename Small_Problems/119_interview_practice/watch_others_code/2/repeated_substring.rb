# repeated_substring

=begin

Given a non-empty string check if it can be constructed
by taking a substring of it and appending multiple
copies of the substring together. You may assume the given
string consists of lowercase english letters only.

p repeated_substring_pattern("abab") == true
p repeated_substring_pattern("aba") == false
p repeated_substring_pattern("aabaaba") == false
p repeated_substring_pattern("abaababaab") == true
p repeated_substring_pattern("abcabcabcabc") == true

PROBLEM:
input: string
output: boolean
- true if a substring can be used to construct the argued string
- false otherwise

EXAMPLES:
p repeated_substring_pattern("abab") == true
p repeated_substring_pattern("aba") == false
p repeated_substring_pattern("aabaaba") == false
p repeated_substring_pattern("abaababaab") == true
p repeated_substring_pattern("abcabcabcabc") == true

DATA STRUCTURE:
"abab"

"a" -> "aaaa"
"ab" -> "abab" true

ALGORITHM:
- generate substrings starting at index 0 up to half of the length of the string, save to array
- loop through substrings array
  - multiply the substring by length / substring length 
  - check if the multiplied substring is equal to the argued string
  - return true if it is
- false


=end

def repeated_substring_pattern(str)
  substrings = []
  (1..str.length/2).each do |length|
    substrings << str[0, length]
  end
  substrings.each do |substring|
    mult = str.length / substring.length
    return true if substring * mult == str
  end
  false
end

p repeated_substring_pattern("abab") == true
p repeated_substring_pattern("aba") == false
p repeated_substring_pattern("aabaaba") == false
p repeated_substring_pattern("abaababaab") == true
p repeated_substring_pattern("abcabcabcabc") == true
