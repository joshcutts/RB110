# letters_in_string.rb

=begin

In this kata, you've to count lowercase letters in a given string and return the 
letter count in a hash with 'letter' as key and count as 'value'. The key must be
 'symbol' instead of string in Ruby and 'char' instead of string in Crystal.

PROBLEM:
input: string
output: hash with counts of each character
- char is key & is a symbol in hash

EXAMPLES:
p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}

DATA STRUCTURE:
hash

ALGORITHM:
- initialize an empty hash to hold final result
- iterate through the string one char at a time
  - if the result hash has the symbol for the character
    - add one to the count
  - otherwise add the character as a symbol to the hash and set count to 1
- return the count hash

=end

# def letter_count(str)
#   counts = Hash.new(0)
#   str.each_char do |char|
#     counts[char.to_sym] += 1
#   end
#   counts
# end


# def letter_count(str)
#   str.chars.each_with_object({}) do |el, hash|
#     if hash.keys.include?(el.to_sym)
#       hash[el.to_sym] += 1
#     else
#       hash[el.to_sym] = 1
#     end
#   end
# end


def letter_count(str)
  str.chars.tally.map {|k, v| [k.to_sym, v]}.to_h
end

p letter_count('codewars') == {:a=>1, :c=>1, :d=>1, :e=>1, :o=>1, :r=>1, :s=>1, :w=>1}
p letter_count('activity') == {:a=>1, :c=>1, :i=>2, :t=>2, :v=>1, :y=>1}
p letter_count('arithmetics') == {:a=>1, :c=>1, :e=>1, :h=>1, :i=>2, :m=>1, :r=>1, :s=>1, :t=>2}
