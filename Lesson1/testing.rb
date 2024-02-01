

=begin

ALGORITHM:
- create an array of the digits
- swap positions in the array of the last digit and second to last digit
- if the swapped number is greater than the original number 
  - return the swapped number
- increment the counter of digit location
- break from the loop
- return -1

=end

# def next_bigger(num)
#   return -1 if num.to_s.split("").length == 1
#   swap_position = -1
  
#   loop do
#     num_array = num.to_s.split("") 
#     num_array[swap_position-1], num_array[swap_position] = num_array[swap_position], num_array[swap_position-1]
#     if num_array.join("").to_i > num
#       return num_array.join("").to_i
#     else
#       swap_position -= 1
#     end
#     break if -(swap_position-1) > num_array.length
#   end
#   -1
# end


# 1234567890
# [-2], [-1] = [-1], [-2]

# p 12.to_s.split("").uniq.sort
# p 21.to_s.split("").uniq.sort

def next_bigger(num)
  return -1 if num < 10
  if num.to_s.length > 8
    prefix_num, num = num.to_s.split("")[0..-7], num.to_s.split("")[-6..-1].join.to_i
  end
  new_num = num + 1
  until num.to_s.split("").sort == new_num.to_s.split("").sort
    new_num += 1
    return -1 if new_num.to_s.length > num.to_s.length
  end
  if prefix_num != nil
    (prefix_num + new_num.to_s.split("")).join.to_i
  else
    new_num
  end
end

=begin
Expected: 1234567908, instead got: 1234567980
1234567890
1234567809
1234567908
Expected: 59884848483559, instead got: 59884848495853
598848484|83559
598848484|95853

=begin

read right to left and find when the left digit < right digit


=end


144
144

=end

# p 144.to_s.split("").sort == 414.to_s.split("").sort
# p 414.to_s.split("").sort

p next_bigger(12) == 21
p next_bigger(513) == 531
p next_bigger(2017) == 2071
p next_bigger(414) == 441
p next_bigger(144) == 414
p next_bigger(9) == -1
p next_bigger(111) == -1
p next_bigger(531) == -1
p next_bigger(123456789) == 123456798