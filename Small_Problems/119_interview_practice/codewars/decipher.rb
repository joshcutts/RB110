# decipher.rb

=begin

You are given a secret message you need to decipher. 
Here are the things you need to know to decipher it:

For each word:

the second and the last letter is switched (e.g. Hello becomes Holle)
the first letter is replaced by its character code (e.g. H becomes 72)


PROBLEM:
input: str with numbers and characters
output: string with digits replaced 

EXAMPLES:
p decipher_this("65 119esi 111dl 111lw 108dvei 105n 97n 111ka") == "A wise old owl lived in an oak"
p decipher_this("84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp") == "The more he saw the less he spoke"
p decipher_this("84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare") == "The less he spoke the more he heard"
p decipher_this("87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri") == "Why can we not all be like that wise old bird"
p decipher_this("84kanh 121uo 80roti 102ro 97ll 121ruo 104ple") == "Thank you Piotr for all your help"


DATA STRUCTURE:
- array of words separated by " "
- loop through array of words
  - loop through characters of each word (with index)
    - create string number local variable which is an empty string
    - if the current character is a digit, add to number local variable
    - take note of index from which characters are alpha (non-numeric)
    - convert number to character and add to slice of word that is all alpha
    - swap second character and last character
    - add modified word to array
- join array and return string

=end

def decipher_this(str)
  words = str.split(" ")
  words.map do |word|
    num = ""
    word_chars = ""
    chars_index = 0
    word.each_char do |char|
      if char.match?(/[0-9]/)
        num << char
      else
        word_chars << char
      end
    end
    new_word = num.to_i.chr + word_chars
      if new_word.length >= 3
        new_word[1], new_word[-1] = new_word[-1], new_word[1]
      end
      new_word
  end.join(" ")
end

p decipher_this("65 119esi 111dl 111lw 108dvei 105n 97n 111ka") == "A wise old owl lived in an oak"
p decipher_this("84eh 109ero 104e 115wa 116eh 108sse 104e 115eokp") == "The more he saw the less he spoke"
p decipher_this("84eh 108sse 104e 115eokp 116eh 109ero 104e 104dare") == "The less he spoke the more he heard"
p decipher_this("87yh 99na 119e 110to 97ll 98e 108eki 116tah 119esi 111dl 98dri") == "Why can we not all be like that wise old bird"
p decipher_this("84kanh 121uo 80roti 102ro 97ll 121ruo 104ple") == "Thank you Piotr for all your help"


# p 119.chr