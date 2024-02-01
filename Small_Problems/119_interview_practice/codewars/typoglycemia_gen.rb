=begin

There is a message that is circulating via public media that claims a reader can 
easily read a message where the inner letters of each words is scrambled, as long 
as the first and last letters remain the same and the word contains all the letters.

Another example shows that it is quite difficult to read the text where all the 
letters are reversed rather than scrambled.

In this kata we will make a generator that generates text in a similar pattern, but 
instead of scrambled or reversed, ours will be sorted alphabetically

Requirement
return a string where:

the first and last characters remain in original place for each word
characters between the first and last characters must be sorted alphabetically
punctuation should remain at the same place as it started, for example: shan't -> sahn't
Assumptions

words are seperated by single spaces
only spaces separate words, special characters do not, for example: tik-tak -> tai-ktk
special characters do not take the position of the non special characters, 
  for example: -dcba -> -dbca
for this kata puctuation is limited to 4 characters: hyphen(-), apostrophe('), 
  comma(,) and period(.)
ignore capitalisation


PROBLEM:
input: string
output: modified string

first and last characters of each word (words are separated by " ") remain in same position, 
remaining characters are sorted alphabetically
special characters should remain in place (-',.)

EXAMPLES:


DATA STRUCTURE:


ALGORITHM:
scramble word
- find index position of any special characters & save to an array ([3, "-"])
- remove any special characters from the string
- slice first char
- slice from second char to second to last char, sort 
- insert special characters, if there were any, back to the string
- return the string

scramble_words
- split string into array of word
- iterate through the array and scramble each word
- join the array to get modified sentence


=end


def scramble_word(str)
  return str if str.length <= 1

  if str.match?(/[-.',]/)
    special_char = str.scan(/[-.',]/)[0]
    special_char_index = str.chars.index(special_char)
    special_char_arr = [special_char, special_char_index]
    str.gsub!(special_char, "")
  end

  modified_str = [str[0]] + str[1..-2].chars.sort + [str[-1]]

  if special_char_arr
    modified_str = modified_str.insert(special_char_arr[1], special_char_arr[0])
  end

  modified_str.join("")
end

def scramble_words(str)
  str.split.map { |word| scramble_word(word)}.join(" ")
end


p scramble_words('professionals') == 'paefilnoorsss' #, 'The first and last letters of a word should reamin in place with the inner letters sorted')
p scramble_words('i') == 'i' #, 'Must handle single charater words'
p scramble_words('') == ''# , 'Must handle empty strings')
p scramble_words('me') == 'me' #, 'Must handle 2 charater words')
p scramble_words('you') == 'you' #, 'Must handle 3 charater words')
p scramble_words('card-carrying') == 'caac-dinrrryg' #, 'Only spaces separate words and punctuation should remain at the same place as it started')
p scramble_words("shan't") == "sahn't" #, 'Punctuation should remain at the same place as it started')
p scramble_words('-dcba') == '-dbca' #, 'Must handle special character at the start')
p scramble_words('dcba.') == 'dbca.' #, 'Must handle special character at the end')
p scramble_words("you've gotta dance like there's nobody watching, love like you'll never be hurt, sing like there's nobody listening, and live like it's heaven on earth.") == "you've gotta dacne like teehr's nbdooy wachintg, love like ylo'ul neevr be hrut, sing like teehr's nbdooy leiinnstg, and live like it's haeevn on earth." #, 'Must handle a full sentence'


