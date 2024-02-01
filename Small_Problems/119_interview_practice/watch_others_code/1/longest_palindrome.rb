=begin

Find the length of the longest substring in the given string that is the
same in reverse (palindrome)

As an exmaple if the input string was " I like racecars that go fast",
the substring (racecar) length would be 7.

p longest_palindrome("a") == 1
p longest_palindrome("aa") == 2
p longest_palindrome("baa") == 2
p longest_palindrome("aab") == 2
p longest_palindrome("baabcd") == 4
p longest_palindrome("baablkj12345432133d")

PROBLEM:
input: string; can include digits but apparaently no punctuation
output: length of the longest substring which is a palindrome

EXAMPLES:
p longest_palindrome("a") == 1
p longest_palindrome("aa") == 2
p longest_palindrome("baa") == 2
p longest_palindrome("aab") == 2
p longest_palindrome("baabcd") == 4
p longest_palindrome("baablkj12345432133d")

DATA STRUCTURE:
"baa"

"b"
"ba"
"baa"
"a"
"aa"
"a"

ALGORITHM:
- generate all possible substrings of the given string
  - use outer loop to iterate through the start index
    - use inner loop to iterate through the lengths
- create an empty array which will hold the length of all palindromes
- iterate through the substrings and if the string is the same backwars and forwards
  - add its length to the array variable created to hold the length
- return the max of the array of palindrome lengths


=end

def generate_substrings(str)
  substrings = []
  (0...str.length).each do |start_index|
    max_length = str.length - start_index
    (1..max_length).each do |length|
      substrings << str[start_index, length]
    end
  end
  substrings
end

def is_palindrome?(str)
  str == str.chars.reverse.join("")
end

def longest_palindrome(str)
  substrings = generate_substrings(str)
  palindrome_lengths = []
  substrings.each do |substring|
    palindrome_lengths << substring.length if is_palindrome?(substring)
  end
  palindrome_lengths.max
end


p longest_palindrome("a") == 1
p longest_palindrome("aa") == 2
p longest_palindrome("baa") == 2
p longest_palindrome("aab") == 2
p longest_palindrome("baabcd") == 4
p longest_palindrome("baablkj12345432133d") == 9