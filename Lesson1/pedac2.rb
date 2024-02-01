=begin
Check if a given string can be constructed by taking a substring of it and appending multiple copies of the substring together

p repeated_substring_pattern("abab") == true
p repeated_substring_pattern("aba") == false
p repeated_substring_pattern("aabaaba") == false
p repeated_substring_pattern("abaababaab") == true
p repeated_substring_pattern("abcabcabcabc") == true
=end


# def repeated_substring_pattern(string)
#   substrings = []
#   max_length = string.length
#   (1..(max_length-1)).each do |length|
#     substrings << string[0, length]
#   end
  
#   substring_multiples = (1..(max_length-1)).map do |length|
#     substrings.map do |substring|
#       substring * (length)
#     end
#   end
#   p substring_multiples
#   substring_multiples.flatten.any? do |substring_multiple|
#     substring_multiple == string
#   end
# end


def repeated_substring_pattern(string)
  substrings = []
  max_length = string.length/2
  (1..max_length).each do |length|
    substrings << string[0, length]
  end
  p substrings
  substrings.each do |element|
    p (string.length / element.length)
  end
end

# p repeated_substring_pattern("abab") #== true
# p repeated_substring_pattern("aba") == false
# p repeated_substring_pattern("aabaaba") == false
p repeated_substring_pattern("abaababaab") == true
# p repeated_substring_pattern("abcabcabcabc") == true

# p repeated_substring_pattern("abab") == true
# p repeated_substring_pattern("aba") #== false
# p repeated_substring_pattern("aabaaba") #== false
# p repeated_substring_pattern("abaababaab") == true
# p repeated_substring_pattern("abcabcabcabc") == true