#letter_percentages.rb

=begin

PROBLEM:
input: string with upper, lower and non-alpha chars
output: percentage of lowercase, uppercase and neither chars in a hash

intermediate: count of the letter classifications

EXAMPLES:
letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

DATA STRUCTURE:
Hashes

ALGORITHM
- create a hash with appropriate classifications
- set length to a length variable for length of string
- iterate through the characters
  - use regex to find/count all chars & set as value for each classification
- use map to create new hash and divide count & multiply by 100 to get percent (float)

=end

def letter_percentages(string)
  count_hash = {lowercase: 0, uppercase: 0, neither: 0}
  length = string.length
  count_hash[:lowercase] = string.scan(/[a-z]/).count
  count_hash[:uppercase] = string.scan(/[A-Z]/).count
  count_hash[:neither] = string.scan(/[^A-Za-z]/).count
  count_hash
  count_hash.map {|classification, char_count| [classification, (char_count/length.to_f)*100] }.to_h
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }