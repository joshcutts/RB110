=begin


Given a string of integers, return the number of odd-numbered substrings that can be formed.

For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.

solve("1341") = 7. See test cases for more examples.

PROBLEM:
input: integer
output: integer, representing the number of odd substrings (sub numbers)
that can be formed from the given argued integer

repeats should be included
contiguous substrings

EXAMPLES:
p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28

DATA STRUCTURE:
generate an array of substrings

ALGORITHM:
- generate an array of all substrings 
  - use outer loop to iterate through the start index
    - use an inner loop to iterate through possible lengths
- select those substrings which are odd numbers into a new array
- count the number of substrings (these are all odd) & return that number

=end

def generate_substrings(str)
  substrings = []
  (0...str.length).each do |start|
    max = str.length - start
    (1..max).each do |length|
      substrings << str[start, length]
    end
  end
  substrings
end


def solve(str)
  substrings = generate_substrings(str)
  substrings.map(&:to_i).select(&:odd?).length
end

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28