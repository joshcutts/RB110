# descending numberic value
arr = ['10', '11', '9', '7', '8']
# p arr.sort_by { |a| a.to_i}.reverse
p arr.sort {|a, b| b.to_i <=> a.to_i}