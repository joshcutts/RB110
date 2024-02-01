=begin

Write a function scramble(str1, str2) that returns true if a portion of
str1 characters can be rearranged to match str2, otherwise return false

p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', javascript) == true

PROBLEM:
input: 2 strings
output: boolean
true if str1 characters can be rearranged to match str2, otherwise return false

case doesn't matter
no digits or punctuation

EXAMPLES:
p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', javascript) == true

DATA STRUCTURE:
array of substrings of string 1
sorting the strings and comparing

ALGORITHM:
- create an empty string to hold result to compare to original str2 (copy)
- create a copy of str2 to compare at the end
- iterate through str2 characters
  - if the current character is included in str1 add it to empty string & remove from str1
- compare the result string to the original string2
  - return true if they are the same & false otherwise

=end

def scramble(str1, str2)
  result = ""
  str2.each_char do |char|
    if str1.include?(char)
      result << char
      str1.sub!(char, "")
    end
  end
  result == str2
end

p scramble('javaass', 'jjss') == false
p scramble('rkqodlw', 'world') == true
p scramble('cedewaraaossoqqyt', 'codewars') == true
p scramble('katas', 'steak') == false
p scramble('scriptjava', 'javascript') == true
p scramble('scriptingjava', "javascript") == true

p "javaass".sub("s", "")