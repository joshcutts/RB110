# parent.rb

=begin

PROBLEM:
input: string
output: modified string
alpha order with lowercase immediately following the uppercase char

uppercase char will only appear 1 time
may be multiple lowercase chars

EXAMPLES:
p find_children("abBA") == "AaBb"
p find_children("AaaaaZazzz") == "AaaaaaZzzz"
p find_children("CbcBcbaA") == "AaBbbCcc"
p find_children("xXfuUuuF") == "FfUuuuXx"
p find_children("") == ""


DATA STRUCTURE:



ALGORITHM:
- split the given string into 2 arrays, one uppercase, one lowercase
- while the character in the lowercase array is the same as whats in the merged array, add the character
- merge the arrays in order into 1 array
- join the array into a string and return it

=end

def find_children(str)
  upper, lower = str.chars.partition {|char| char == char.upcase }
  upper.sort!
  lower.sort!
  merged = []
  lower_i = 0
  upper.each_index do |i|
    merged << upper[i]
    while lower[lower_i] == upper[i].downcase
      merged << lower[lower_i]
      lower_i += 1
    end
  end
  merged.join("")
end



p find_children("abBA") == "AaBb"
p find_children("AaaaaZazzz") == "AaaaaaZzzz"
p find_children("CbcBcbaA") == "AaBbbCcc"
p find_children("xXfuUuuF") == "FfUuuuXx"
p find_children("") == ""