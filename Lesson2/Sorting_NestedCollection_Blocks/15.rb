arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

# selected_arr = []

# arr.each do |hash|
#   subarrs_even = []
#   hash.values.each do |subarr|
#     if subarr.all? {|element| element.even?} 
#       subarrs_even << true
#     else
#       subarrs_even << false
#     end
#   end
#   selected_arr << hash if subarrs_even.all?
# end

# p selected_arr

selected_arr = arr.select do |hash|
  hash.all? do |_, value|
    value.all? do |num|
      num.even?
    end
  end
end

p selected_arr