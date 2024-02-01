# palindromic_substrings.rb

=begin


PROBLEM:
input: string
output: array of strings which are palindromes

single characters are not palindromes
palindromes are case sensititive
duplicate palindromes are allowed

EXAMPLES:
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

DATA STRUCTURE:
generate substrings in an array


ALGORITHM:
- create an empty result array to hold substrings that are palindromes
- generate all substrings for the argued string
- iterate through the array of substring
  - if the string is the same as when it is reversed, add it to the result array (palindromes array)
- return the array of palindromes

=end

def generate_substrings(str)
  substrings = []
  (0..str.length).each do |start_index|
    max_length = str.length - start_index
    (1..max_length).each do |length|
      substrings << str[start_index, length]
    end
  end
  substrings
end


def palindromes(str)
  palindromes = []
  substrings = generate_substrings(str)
  substrings.each do |palindrome|
    if palindrome == palindrome.reverse && palindrome.length > 1
      palindromes << palindrome
    end
  end
  palindromes
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]