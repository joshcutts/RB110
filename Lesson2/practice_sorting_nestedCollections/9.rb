arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

sorted_arr = arr.map do |arr|
  arr.sort {|a,b| b <=> a}
end

p sorted_arr