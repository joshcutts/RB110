# 11.rb

arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

new_arr = arr.map do |subarr|
  subarr.select do |element|
    element % 3 == 0
  end
end

p new_arr