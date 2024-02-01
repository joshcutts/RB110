# def interleave(arr1, arr2)
#   interleaved_arr = []
#   arr1.each_index {|index| interleaved_arr << arr1[index] << arr2[index]}
#   interleaved_arr
# end


# def interleave(arr1, arr2)
#   arr1.each_with_object([]).with_index do |(_, arr), index|
#     arr << arr1[index] << arr2[index]
#   end
# end

def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) #== [1, 'a', 2, 'b', 3, 'c']