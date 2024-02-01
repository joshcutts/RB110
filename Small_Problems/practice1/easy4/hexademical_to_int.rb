=begin

hexadecimal_to_integer('4D9f') == 19871

convert hexademical to integer without pre-built methods

=end

=begin

PROBLEM:
input: hexademical string
output: integer



=end

def hexadecimal_to_integer(str)
  str_num = ("0".."9").to_a + %w(A B C D E F)
  nums = (0..16).to_a
  str_to_num = str_num.zip(nums).to_h

  sum = 0
  multiplier = 1
  str.chars.reverse_each do |str_num| 
    sum += str_to_num[str_num.upcase] * multiplier
    multiplier *= 16
  end
  sum
end

p hexadecimal_to_integer('4D9f') == 19871