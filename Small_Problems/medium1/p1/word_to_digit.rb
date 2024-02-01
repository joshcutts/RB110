# word_to_digit.rb

=begin

ALGORITHM:
- create a conversion hash for words to integers
- iterate through

=end
# strings = %w(zero one two three four five six seven eight nine)
# nums = %w(0 1 2 3 4 5 6 7 8 9)

# STRING_TO_INT = strings.zip(nums).to_h

# def word_to_digit(string)
#   sentences = string.split(".")
#   a = sentences.map do |sentence|
#     sentence.split(" ").map do |word|
#       if STRING_TO_INT.keys.include?(word)
#         STRING_TO_INT[word]
#       else
#         word
#       end
#     end
#   end
#   a.map do |sentence|
#     sentence.join(" ")
#   end.join(". ") + "."
# end

HASH = {
  "one" => 1,
  "two" => 2,
  "three" => 3,
  "four" => 4,
  "five" => 5,
  "six" => 6,
  "seven" => 7,
  "eight" => 8,
  "nine" => 9,
  "zero" => 0
}

def word_to_digit(sentence)
  sentence.scan(/\w+|\W+/).map { |word| HASH.include?(word) ? HASH[word] : word }.join
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'