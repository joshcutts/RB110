# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.

# Examples:

# p least_common_char("Hello World") #== "h"
# p least_common_char("Peter Piper picked a peck of pickled peppers") #== "t"
# p least_common_char("Mississippi") #== "m"
# p least_common_char("Happy birthday!") #== ' '
# p least_common_char("aaaaaAAAA") #== 'a'

# The tests above should print "true".


=begin

PROBLEM:
input: string
output: character that occurs least often in the argued string
uppercase & lowercase consider to be the same character

EXAMPLES:
# p least_common_char("Hello World") #== "h"
# p least_common_char("Peter Piper picked a peck of pickled peppers") #== "t"
# p least_common_char("Mississippi") #== "m"
# p least_common_char("Happy birthday!") #== ' '
# p least_common_char("aaaaaAAAA") #== 'a'

DATA STRUCTURE:
hash of counts where keys are the character and values are the count

ALGORITHM:
- lowercase the string, then create a hash of character counts
- get the counts and find the minimum
- return the key (char) associated with the minimum count


=end

def least_common_char(str)
  counts = str.downcase.chars.tally
  min = counts.values.min
  counts.key(min)
end

p least_common_char("Hello World") == "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") == "t"
p least_common_char("Mississippi") == "m"
p least_common_char("Happy birthday!") == ' '
p least_common_char("aaaaaAAAA") lterttttt== 'a'