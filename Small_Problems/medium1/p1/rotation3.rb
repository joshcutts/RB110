#rotation3.rb

=begin

0..5
1..5
2..5
3..5
4..5

=end

def rotate_array(array)
  array.slice(1..-1).concat(array[0])
end

def max_rotation(integer)
  iterations = (integer.to_s.length)-2
  string_int = integer.to_s
  (0..iterations).each do |digit|
    string_int[digit..string_int.length-1] = rotate_array(string_int[digit..string_int.length-1])
  end
  string_int.to_i
end


p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845