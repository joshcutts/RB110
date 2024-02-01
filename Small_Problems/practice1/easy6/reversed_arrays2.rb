# def reverse(arr)
#   new_arr = []
#   (arr.length).times {|x| new_arr << arr[-(x+1)]}
#   new_arr
# end

# def reverse(arr)
#   index = arr.length - 1
#   new_arr = []
#   loop do
#     new_arr << arr[index] unless arr[index] == nil
#     index -= 1
#     break if index < 0
#   end
#   new_arr
# end

# def reverse(arr)
#   new_arr = []
#   arr.reverse_each {|el| new_arr << el}
#   new_arr
# end

# def reverse(arr)
#   return [] if arr.empty?
#   index = arr.length - 1
#   arr.each_with_object([]) do |_, new_arr| 
#     new_arr << arr[index]
#     index -= 1
#   end
# end

# def reverse(arr)
#   return [] if arr.empty?
#   index = arr.length - 1
#   arr.inject([]) do |new_arr, el|
#     new_arr << arr[index]
#     index -= 1
#     new_arr
#   end
# end

# def reverse(arr)
#   arr.inject([], :unshift)
# end

def reverse(arr)
  arr.inject([]) {|new_arr, el| new_arr.prepend(el) } 
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true