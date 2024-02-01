def string_to_integer(str)
  str_num = ("0".."9").to_a
  nums = (0..9).to_a
  str_to_num = str_num.zip(nums).to_h

  sum = 0
  multiplier = 1
  str.chars.reverse_each do |str_num| 
    sum += str_to_num[str_num] * multiplier
    multiplier *= 10
  end
  sum
end

# def string_to_signed_integer(str)
#   if str[0] == "-"
#     str.gsub!("-", "")
#     string_to_integer(str) * -1
#   else
#     str.gsub!("+", "")
#     string_to_integer(str)
#   end
# end

def string_to_signed_integer(str)
  int = string_to_integer(str.gsub(/[+-]/, ""))
  str[0] == "-" ? int*-1 : int
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100