# split_strings.rb

=begin

PROBLEM:
input: string
output: array of 2 element long slices of the argued string

EXAMPLES:
p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []


DATA STRUCTURE:
array of the 2 character slices

ALGORITHM:
- initialize an empty array for the result
- if the string is empty, return an empty array
- if the length of the string is odd, append "-" to the end
- iterate through string 2 characters at a time and add to result array



=end

def solution(str)
  result = []
  return [] if str.empty? 
  str << "_" if str.length.odd?

  index = 0
  loop do
    result << str[index, 2]
    index += 2
    break if index >= str.length
  end
  result
end

# def solution(str)
#   str.chars.each_slice(2).to_a.map do |x|
#     if x.length > 1
#       x[0] + x[1]
#     else
#       x[0]
#     end
#   end.map do |x|
#     if x.length == 1
#       x << "_"
#     else
#       x
#     end
#   end
# end

p solution("abcdef") == ["ab", "cd", "ef"]
p solution("abcdefg") == ["ab", "cd", "ef", "g_"]
p solution("") == []