=begin

Write a function that takes in a string of one or more words, and returns the same string, 
but with all words that have five or more letters reversed (Just like the name of this Kata). 
Strings passed in will consist of only letters and spaces. Spaces will be included only when more 
than one word is presen

"Hey fellow warriors"  --> "Hey wollef sroirraw" 
"This is a test        --> "This is a test" 
"This is another test" --> "This is rehtona test"

PROBLEM:
input: string
output: string with words >= 5 characters reversed

EXAMPLES:
p spin_words("Welcome") == "emocleW"
p spin_words("Hey fellow warriors") == "Hey wollef sroirraw"

DATA STRUCTURE:


ALGORITHM:
- split string into an array of words
- iterate through the array one word at a time
  - if the word is >= 5 characters, reverse it and add to new array
  - otherwise add the word as is to the array
- join the array


=end

def spin_words(str)
  str.split(" ").map do |word|
    if word.length >= 5
      word.chars.reverse.join("")
    else
      word
    end
  end.join(" ")
end

p spin_words("Welcome") == "emocleW"
p spin_words("Hey fellow warriors") == "Hey wollef sroirraw"