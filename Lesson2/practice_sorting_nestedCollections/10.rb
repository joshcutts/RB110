arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]
#FIRST
# new_arr = arr.map do |hash|
#   hash.map do |key, value|
#     [key, value += 1]
#   end.to_h
# end

# p new_arr
#SECOND
# new_arr = arr.map do |hash|
#   incremented_hash = {}
#   hash.each do |key, value|
#     incremented_hash[key] = value + 1
#   end
#   incremented_hash
# end

# p new_arr
#THIRD
# new_arr = []
# arr.each do |hash|
#   incremented_hash = {}
#   hash.each do |key, value|
#     incremented_hash[key] = value + 1
#   end
#   new_arr << incremented_hash
# end

# p new_arr

#FOURTH
new_arr = arr.each_with_object([]) do |hash, arr|
  incremented_hash = {}
  hash.each do |key, value|
    incremented_hash[key] = value + 1
  end
  arr << incremented_hash
end

p new_arr

new_arr = arr.inject([]) do |arr, hash|
  incremented_hash = {}
  hash.each do |key, value|
    incremented_hash[key] = value + 1
  end
  arr << incremented_hash
end

p new_arr