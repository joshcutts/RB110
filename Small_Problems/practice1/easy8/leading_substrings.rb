# leading_substrings.rb

=begin

Write a method that returns a list of all substrings of a string that start 
at the beginning of the original string. The return value should be arranged 
in order from shortest to longest substring.

PROBLEM:
input: string
output: array of leading substrings


=end

def leading_substrings(str)
  result = []
  (1..str.length).each do |length|
    result << str[0, length]
  end
  result
end

p leading_substrings('abc') == ['a', 'ab', 'abc']
p leading_substrings('a') == ['a']
p leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']