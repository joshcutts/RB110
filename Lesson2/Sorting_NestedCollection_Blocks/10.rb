arr = [{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

new_arr = arr.map do |hash|
  hash.map do |key, value|
    [key, value + 1]
  end.to_h
end

p new_arr

arr.each_with_object([]) do |hash, new_arr|
  incremented_hash = {}
  hash.each do |key, value|
    incremented_hash[key] = value + 1
  end
  new_arr << incremented_hash
end

p new_arr

arr.map do |hash|
  incremented_hash = {}
  hash.each do |key, value|
    incremented_hash[key] = value + 1
  end
  incremented_hash
end