# all_substrings.rb

=begin

ALGORITHM:
- create an empty result array
- outer loop should keep track of starting index
  - iterate from 0 (starting index) to length of array minus 1
  - inner loop should keep track of the lengths of the substrings
    - calculate the max length for that particular starting index which is the 
      length of the string minus the current starting index
    - iterate from 1 (starting length) to the max length for that starting index
    - slice the string starting at the starting index and for the given length and add
      - to the result array
- return the result array
=end

# def substrings(str)
#   result = []
#   (0...str.length).each do |start_index|
#     max_length = str.length - start_index
#     (1..max_length).each do |length|
#       result << str[start_index, length]
#     end
#   end
#   result
# end

def substrings(str)
  result = []
  (0..str.length).each do |start_index|
    (start_index+1..str.length).each do |end_index|
      result << str[start_index, end_index]
    end
  end
  result
end

p substrings('abcde') #== [
#   'a', 'ab', 'abc', 'abcd', 'abcde',
#   'b', 'bc', 'bcd', 'bcde',
#   'c', 'cd', 'cde',
#   'd', 'de',
#   'e'
# ]