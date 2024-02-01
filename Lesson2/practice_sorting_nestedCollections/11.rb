arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

# new_arr = arr.map do |subarr|
#   subarr.select do |element|
#     element % 3 == 0
#   end
# end

# p new_arr

# new_arr = []
# arr.each do |subarr|
#   new_subarr = []
#   subarr.each do |element|
#     new_subarr << element if element % 3 == 0
#   end
#   new_arr << new_subarr
# end 

# p new_arr

new = arr.each_with_object([]) do |subarr, new_arr|
  new_subarr = []
  subarr.each {|element| new_subarr << element if element % 3 == 0}
  new_arr << new_subarr
end

p new