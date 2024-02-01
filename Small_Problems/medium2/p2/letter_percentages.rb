# letter_percentages.rb

=begin

Write a method that takes a string, and then returns a hash that contains 
3 entries: one represents the percentage of characters in the string that 
are lowercase letters, one the percentage of characters that are uppercase 
letters, and one the percentage of characters that are neither.

You may assume that the string will always contain at least one character.

letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }


PROBLEM:
input: string
output: hash 
with % of characters that are lowercase, uppercase or neither

EXAMPLES:
letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }

DATA STRUCTURE:
hash for the percenages and classifications

ALGORITHM:
- intialize hash to hold final counts
- count number of lowercase chars, convert to float, divide by length and save to hash for lowercase: key
- count number of upper chars, convert to float, divide by length and save to hash for uppercase: key
- count number of neither chars, convert to float, divide by length and save to hash for neither: key

=end

# def letter_percentages(str)
#   percents_hash = {}
#   length = str.length
#   percents_hash[:lowercase] = (str.scan(/[a-z]/).length.to_f / length)*100.round(1)
#   percents_hash[:uppercase] = (str.scan(/[A-Z]/).length.to_f / length)*100.round(1)
#   percents_hash[:neither] = (str.scan(/[^A-Za-z]/).length.to_f / length)*100.round(1)
#   percents_hash
# end

def letter_percentages(str)
  percents_hash = {}
  length = str.length
  percents_hash[:lowercase] = str.count("a-z")
  percents_hash[:uppercase] = str.count("A-Z")
  percents_hash[:neither] = str.count("^A-Za-z")

  percents_hash.each do |k, v|
    percents_hash[k] = ((v.to_f / length) * 100).round(1)
  end

  percents_hash
end

p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }