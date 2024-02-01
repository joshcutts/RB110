# word_to_digit.rb

=begin

Write a method that takes a sentence string as input, and returns the same 
string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 
'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

PROBLEM:
input: string
output: replace string numbers with actual integers

EXAMPLES:
word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'

DATA STRUCTURE:


ALGORITHM:
- create empty string to hold converted result
- create hash to convert strings to integers
- convert string to an array on spaces
- itereate through the words array
  - if the word is a key in the array, convert & add to result string
  - otherwise add the word to the result
- return the result string

=end

# def word_to_digit(str)
#   result = []
#   convert = {"zero" => "0", "one" => "1", "two" => "2", "three" => "3", "four" => "4", "five" => "5",
#             "six" => "6", "seven" => "7", "eight" => "8", "nine" => "9", "zero." => "0.", "one." => "1.", 
#             "two." => "2.", "three." => "3.", "four." => "4.", "five." => "5.", "six." => "6.", "seven." => "7.",
#             "eight." => "8.", "nine." => "9."}

#   str.split.each do |word|
#     if convert.keys.include?(word)
#       result << convert[word]
#     else
#       result << word
#     end
#   end
#   result.join(" ")
# end


word_nums = %w(zero one two three four five six seven eight nine)
nums = ("0".."9").to_a
CONVERT = word_nums.zip(nums).to_h

# def word_to_digit(str)
#   CONVERT.keys.each do |word_num|
#     str.gsub!(/\b#{word_num}\b/, CONVERT[word_num])
#   end
#   str
# end

def word_to_digit(str)
  str.split.map do |word|
    CONVERT.each do |word_num, num|
      word[word_num] = num if word.include?(word_num)
    end
    word
  end.join(" ")
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'

p "four."["four"]