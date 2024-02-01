# high_word.rb

=begin

Given a string of words, you need to find the highest scoring word.

Each letter of a word scores points according to its position 
in the alphabet: a = 1, b = 2, c = 3 etc.

For example, the score of abad is 8 (1 + 2 + 1 + 4).

You need to return the highest scoring word as a string.

If two words score the same, return the word that appears earliest 
in the original string.

All letters will be lowercase and all inputs will be valid.


PROBLEM:
input: string, lowercase
output: string, which has the highest "score"

score is calculated where each char has points equal to its position in the alpha
a = 1
b = 2
c = 3

EXAMPLES:
p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aa b') == 'aa'
p high('b aa') == 'b'
p high('bb d') == 'bb'
p high('d bb') == 'd'
p high('aaa b') == 'aaa'

DATA STRUCTURE:
hash for alphabet & points per character
{"a" => 1, "b" => 2, ...}

hash for scores associated with words

{score => "man", score => "i", }

ALGORITHM:
- create a hash with alphabet and values as position in alphabet
- create an empty hash to hold points and strings
- create an array from the string (words array)
  - iterate through the words array & create a new array with points per word
    - create a score variable and initalize at 0  
    - iterate through the word one char at a time
      - use hash to calculate score for each word and save to array
- zip together the scores and words
- find highest score
- return the word associated with the highest score

=end

# def high(str)
#   alpha = ("a".."z").to_a
#   nums = (1..26).to_a
#   alpha_to_score = alpha.zip(nums).to_h

#   words = str.split
#   scores = words.map do |word|
#     score = 0
#     word.each_char do |char|
#       score += alpha_to_score[char]
#     end
#     score
#   end

#   max = scores.max
#   i = scores.index(max)
#   words[i]
# end

def high(str)
  alpha = ("a".."z").to_a
  nums = (1..26).to_a
  alpha_to_score = alpha.zip(nums).to_h

  words = str.split
  scores = words.map do |word|
    score = 0
    word.each_char do |char|
      score += alpha_to_score[char]
    end
    score
  end

  max = scores.max
  scores.zip(words)
end



p high('man i need a taxi up to ubud') == 'taxi'
p high('what time are we climbing up the volcano') == 'volcano'
p high('take me to semynak') == 'semynak'
p high('aa b') #== 'aa'
p high('b aa') #== 'b'
p high('bb d') == 'bb'
p high('d bb') == 'd'
p high('aaa b') == 'aaa'