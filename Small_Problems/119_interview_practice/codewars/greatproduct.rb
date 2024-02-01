# great_product.rb

=begin


PROBLEM:
input: str of digits
output: largest product of 5 consecutive digits from argued string of digits

EXAMPLES:
p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0

DATA STRUCTURE:
substrings of 5 consecutive digits

ALGORITHM:
- generate length 5 substrings from given string
- generate array of products of the 5 digits
- find max sum


=end

# def generate_substrings(str)
#   substrings = []
#   (0..str.length-5).each do |start|
#     substrings << str[start, 5]
#   end
#   substrings
# end


# def greatest_product(str_num)
#   substrings = generate_substrings(str_num)
#   products = substrings.map {|substring| substring.chars.map(&:to_i).inject(:*)}
#   products.max
# end

def greatest_product(str_num)
  # str_num.chars.each_cons(5).to_a
  str_num.chars.each_slice(5).to_a
end

p greatest_product("123834539327238239583") #== 3240
# p greatest_product("395831238345393272382") == 3240
# p greatest_product("92494737828244222221111111532909999") == 5292
# p greatest_product("92494737828244222221111111532909999") == 5292
# p greatest_product("02494037820244202221011110532909999") == 0