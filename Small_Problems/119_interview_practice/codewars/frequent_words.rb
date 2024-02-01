=begin

Write a function that, given a string of text (possibly with punctuation and line-breaks), 
returns an array of the top-3 most occurring words, in descending order of the number of occurrences.

Assumptions:
A word is a string of letters (A to Z) optionally containing one or more apostrophes (') in ASCII.
Apostrophes can appear at the start, middle or end of a word ('abc, abc', 'abc', ab'c are all valid)
Any other characters (e.g. #, \, / , . ...) are not part of a word and should be treated as whitespace.
Matches should be case-insensitive, and the words in the result should be lowercased.
Ties may be broken arbitrarily.
If a text contains fewer than three unique words, then either the top-2 or top-1 words should be returned, 
or an empty array if a text contains no words.

EXAMPLES:

DATA STRUCTURE:
- array of words
- hash of counts of each word

ALGORITHM:
- generate an array of words based on spaces in the string
- tally the occurence of each word
- sort the occurence counts & tkae the 3 highest
- get the string associated with each of the highest 3 string counts and return in an array

=end


# p ["'''"].reject {|x| p x.split("").all?("'")}

def top_3_words(str)
  str.gsub!("/", "")
  str.gsub!(/[,.]/, "")
  str.downcase!
  words_array = str.split(" ")
  words_array.reject! {|x| x.split("").all?("'")}
  counts = words_array.tally
  sorted_high_counts = counts.values.sort.reverse[0, 3].compact
  sorted_high_counts.each_with_object([]) {|count, arr| arr << counts.key(count)}
end

p top_3_words("a a a  b  c c  d d d d  e e e e e") == ["e", "d", "a"]
p top_3_words("e e e e DDD ddd DdD: ddd ddd aa aA Aa, bb cc cC e e e") == ["e", "ddd", "aa"]
p top_3_words("  //wont won't won't ") == ["won't", "wont"]
p top_3_words("  , e   .. ") == ["e"]
p top_3_words("  ...  ") == []
p top_3_words("  '  ") == []
p top_3_words("  '''  ") == []
p top_3_words("""In a village of La Mancha, the name of which I have no desire to call to
mind, there lived not long since one of those gentlemen that keep a lance
in the lance-rack, an old buckler, a lean hack, and a greyhound for
coursing. An olla of rather more beef than mutton, a salad on most
nights, scraps on Saturdays, lentils on Fridays, and a pigeon or so extra
on Sundays, made away with three-quarters of his income.""") == ["a", "of", "on"]