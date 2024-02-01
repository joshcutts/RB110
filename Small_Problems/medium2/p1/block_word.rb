# block_word.rb

=begin

PROBLEM:
input: string (upper or lowercase; aplha chars only)
output: boolean

explicit: can only use the spelling blocks outlined, one char from each 'block'
implict

EXAMPLES:
block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true

DATA STRUCTURE:



ALGORITHM:
- store blocks in nested array
- iterate through the letter blocks
  - iterate through the characters in the string


=end

BLOCKS = [["B", "O",], ["X", "K"], ["D", "Q"], ["C", "P"], ["N", "A"], ["G", "T"], ["R", "E"], ["F", "S"], ["J", "W"], ["H", "U"], ["V", "I"], ["L", "Y"], ["Z", "M"]].map {|x| x.join}

def block_word?(string)
  count_bool = true
  BLOCKS.each do |block|
    count = 0
    string.chars.each do |char|
      count += 1 if block.include?(char.upcase)
    end
    count_bool = false if count >= 2
  end
  count_bool
end

# BLOCKS.each do |block|
#   p "BUTCH".count(block)
# end

# def block_word?(string)
#   upper_string = string.upcase
#   BLOCKS.all? { |block| upper_string.count(block) < 2}
# end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true