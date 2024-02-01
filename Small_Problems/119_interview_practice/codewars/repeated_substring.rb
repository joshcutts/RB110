=begin

For a given nonempty string s find a minimum substring t and the maximum number
 k, such that the entire string s is equal to t repeated k times.

The input string consists of lowercase latin letters.

Your function should return :

a tuple (t, k) (in Python)
an array [t, k] (in Ruby and JavaScript)
in C, return k and write to the string t passed in parameter

"ababab" ---> (t = "ab", k = 3)

"abcde" ---> (t = "abcde", k = 1)
because for this string, the minimum substring 't'
such that 's' is 'k' times 't', is 's' itself.

PROBLEM:
input: string
output: array with 2 elements
1) substring
2) number of times the substring multiplied by equals the argued string

EXAMPLES:
p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]

DATA STRUCTURE:
substrings

ALGORITHM:
- iterate from 1 to length of the array
  - generate substring for given substring length
  - find multiplier by dividing length of string by substring length
  - multiply substring by the multiplier & check if equal to original argued string
    - if it is, return substring & multiplier in array

=end

def f(str)
  (1..str.length).each do |length|
    substring = str[0, length]
    multiplier = str.length / substring.length
    if substring * multiplier == str
      return [substring, multiplier]
    end
  end
end

p f("ababab") == ["ab", 3]
p f("abcde") == ["abcde", 1]