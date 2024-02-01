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
input: string of lowercase alpha characters
output: boolean; true if the given string can be constructed from substring of the given string, false otherwise

explicit: only english lowercase letters

EXAMPLES:
p repeated_substring_pattern("abab") == true
p repeated_substring_pattern("aba") == false
p repeated_substring_pattern("aabaaba") == false
p repeated_substring_pattern("abaababaab") == true
p repeated_substring_pattern("abcabcabcabc") == true

DATA STRUCTURE:
"abab"

length = 4
substring length = 2


substrings:
"a"
"ab"
"aba"
* need to exclude the substring which is the entire string

ALGORITHM:
- generate the substrings from index 0 excluding the full string (up to length - 1)
- iterate through the substrings; for each substring
  - find the multiplier, by dividing the original string length by the substring length
  - multiply the substring by the multiplier length and compare to original string
  - return true if they are the same
- return false if having gone through all the substrings from index 0, none multiplied by the multiplier equals the given string


=end

def substrings_from_zero(string)
  substrings = []
  (1..(string.length)/2).each do |length|
    substrings << string[0, length]
  end
  substrings
end


def repeated_substring_pattern(string)
  substrings = substrings_from_zero(string)
  length = string.length

  substrings.each do |substring|
    multiplier = length / (substring.length)
    return true if (substring * multiplier) == string
  end
  false
end

p repeated_substring_pattern("abab") == true
p repeated_substring_pattern("aba") == false
p repeated_substring_pattern("aabaaba") == false
p repeated_substring_pattern("abaababaab") == true
p repeated_substring_pattern("abcabcabcabc") == true