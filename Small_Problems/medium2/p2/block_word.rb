#block_word.rb


=begin

A collection of spelling blocks has two letters per block, as shown in this list:

B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

This limits the words you can spell with the blocks to just those words that do not 
  use both letters from any given block. Each letter in each block can only be used once.

Write a method that returns true if the word passed in as an argument can be spelled 
from this set of blocks, false otherwise.

block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true


PROBLEM:
input: string
output: boolean
true if the words can be spelled using 1 letter from each given pair
false otherwise

EXAMPLES:
p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

DATA STRUCTURE:
B:O   X:K   D:Q   C:P   N:A
G:T   R:E   F:S   J:W   H:U
V:I   L:Y   Z:M

[%w(B O)]

ALGORITHM:
- iterate through nested array of blocks
- count the number of times the string has the characters in the block
- return false if count is ever >2


=end

# BLOCKS = [%w(B O), %w(X K), %w(D Q), %w(C P), %w(N A), %w(G T), %w(R E), %w(F S), %w(J W), %w(H U), %w(V I), %w(L Y), %w(Z Y)]
BLOCKS = ["BO", "XK", "DQ", "CP", "NA", "GT", "RE", "FS", "JW", "HU", "VI", "LY", "ZY"]

def block_word?(str)
  BLOCKS.each do |block|
    return false if str.upcase.scan(/[#{block}]/).length == 2
  end
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true

# p 'BUTCH'.scan(/[HU]/)