# A substring is a contiguous (non-empty) sequence of characters within a string.
# A vowel substring is a substring that only consists of vowels ('a', 'e', 'i', 'o', and 'u') and has all five vowels present in it.
# Given a string word, return the number of vowel substrings in word.

# p count_vowel_substrings("abcde") == 0
# p count_vowel_substrings("cuaieuouac") == 7
# p count_vowel_substrings("aeiouu") == 2
# p count_vowel_substrings("unicornarihan") == 0

=begin

PROBLEM
input: string, all lowercase alpha characters
output: integer, count of vowel substrings that:
1) consists of only vowels & has all 5 vowels present

EXAMPLES:
p count_vowel_substrings("abcde") == 0
p count_vowel_substrings("cuaieuouac") == 7
p count_vowel_substrings("aeiouu") == 2
p count_vowel_substrings("unicornarihan") == 0


DATA STRUCTURE:
"cuaieuouac"
uaieuo
uaieuou
uaieuoua
aieuo
aieuou
aieuoua
ieuoua


ALGORITHM
- generate all substrings, select those with length 5 and above
- create variable that has all 5 vowels (a e i o u)
- initialize vowel_substring counter variable
- iterate through the substrings
  - create vowel_test varaible, empty array to hold vowels of substring (use to check if all 5 vowels are in substring)
  - if all characters in the substring are vowels
    - iterate through the substring by character
      - if the character is a vowel, add it to the vowel_test variable
    - take unique characters from vowel_test variable and sort it
    - if vowel_test is equal to sorted (a e i o u)
      - increment all_vowel_substring counter
- return the all_vowel_substring counter variable
=end

def create_substrings(string)
  substrings = []
  max_index = string.length - 1
  (0..max_index).each do |start_index|
    max_length = string.length - start_index
    (1..max_length).each do |length|
      substrings << string[start_index, length]
    end
  end
  substrings.select {|substring| substring.length >= 5}
end

def count_vowel_substrings(string)
  substrings = create_substrings(string)
  vowels = %w(a e i o u)
  vowel_substring_counter = 0
  vowel_substrings = []

  substrings.each do |substring|
    vowel_test = []
    if substring.chars.all? {|char| vowels.include?(char)}
      substring.each_char do |char|
        vowel_test << char if vowels.include?(char)
      end
      vowel_substring_counter += 1 if vowel_test.uniq.sort == vowels.sort
    end
  end
  vowel_substring_counter
end

p count_vowel_substrings("abcde") == 0
p count_vowel_substrings("cuaieuouac") == 7
p count_vowel_substrings("aeiouu") == 2
p count_vowel_substrings("unicornarihan") == 0
