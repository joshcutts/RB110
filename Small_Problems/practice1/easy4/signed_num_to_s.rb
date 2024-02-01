=begin

ALGORITHM:
- if int < 0
  - multiply by -1 & use integer_to_string method to convert
  - prepend "-" to the string
- otherwise if int > 0
  - use integer_to_string method to convert string to string
  - prepend "+"
- otherwise 
  - return 0

=end



def integer_to_string(int)
  result = []
  nums = (0..9).to_a
  str_nums = ("0".."9").to_a
  nums_to_str_nums = nums.zip(str_nums).to_h

  loop do
    digit = int % 10
    result.unshift(nums_to_str_nums[digit])
    int /= 10
    break if int == 0
  end
  result.join
end

def signed_integer_to_string(int)
  if int < 0
    int *= -1
    str_int = integer_to_string(int)
    str_int.prepend("-")
  elsif int > 0
    str_int = integer_to_string(int)
    str_int.prepend("+")
  else
    "0"
  end
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'