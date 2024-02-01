#pedac_practice.rb

=begin
Given a word, create a hash which stores the indexes of each letter in an array.
Make sure the letters are the keys.
Make sure the letters are symbols.
Make sure the indexes are stored in an array and those arrays are values.

p map_letters("froggy") == { :f => [0], :r=>[1], :o=>[2], :g=>[3, 4], :y=>[5] }
p map_letters("dodo") == { :d=>[0, 2], :o=>[1, 3] }
p map_letters("grapes") == { :g=>[0], :r=>[1], :a=>[2], :p=>[3], :e=>[4], :s=>[5] }
=end

=begin
PROBLEM:
input: string
output: hash of letters
- letter should be key
- the letter should be a symbol
- the value should be an array of indexes

explicit: a single letter can have multiple indexes
implicit: order of keys doesn't matter

EXAMPLES:
p map_letters("froggy") == { :f => [0], :r=>[1], :o=>[2], :g=>[3, 4], :y=>[5] }
p map_letters("dodo") == { :d=>[0, 2], :o=>[1, 3] }
p map_letters("grapes") == { :g=>[0], :r=>[1], :a=>[2], :p=>[3], :e=>[4], :s=>[5] }

DATA STRUCTURES:
array of indexes for each letter
final result is hash as above

ALGORITHM
- create an empty final result hash
- step through the string one character at a time with the index
  - check if the letter already exists in the hash as a key
    - if it does add the index to value of the array (push to the array)
  - otherwise
      - add the character (as a symbol) to the hash and assign the value [index] in an array

=end

def map_letters(string)
  result_hash = {}
  string.each_char.with_index do |char, index|
      if result_hash.keys.include?(char.to_sym)
        result_hash[char.to_sym] << index
      else
        result_hash[char.to_sym] = [index]
      end
  end
  result_hash
end

p map_letters("froggy") == { :f => [0], :r=>[1], :o=>[2], :g=>[3, 4], :y=>[5] }
p map_letters("dodo") == { :d=>[0, 2], :o=>[1, 3] }
p map_letters("grapes") == { :g=>[0], :r=>[1], :a=>[2], :p=>[3], :e=>[4], :s=>[5] }