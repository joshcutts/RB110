# 13.rb

arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]
a = arr.sort_by do |arr|
  arr.select do |element|
    element.odd?
  end
end

p a