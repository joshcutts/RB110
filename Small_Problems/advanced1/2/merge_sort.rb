# merge_sort.rb

=begin

DATA STRUCTURE:

length = 4
[0, l/2] [l/2, l/2]
[9, 5, 7, 1] ->
[[9, 5], [7, 1]] ->
[[[9], [5]], [[7], [1]]]


merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]

ALGORITHM
-

=end

def merge(a1, a2)
  merged = []
  max = [a1.length, a2.length].max
  (0...max).each do |i|
    if a1[i] == nil || a2[i] == nil
      a1[i] == nil ? (merged << a2[i]) : (merged << a1[i])
    else
      if merged.length > 1 && (a1[i] < merged[-1] || a2[i] < merged[-1])
        if a1[i] < merged[-1] 
          (merged.insert(-2, a1[i])) 
          merged << a2[i]
        else
          (merged.insert(-2, a2[i]))
          merged << a1[i]
        end
      elsif a1[i] < a2[i]
        merged << a1[i] << a2[i]
      else
        merged << a2[i] << a1[i]
      end
    end
  end
  merged
end

def merge_sort(array)
  return array if array.size == 1

  sub_array_1 = array[0...array.size / 2]
  sub_array_2 = array[array.size / 2...array.size]

  sub_array_1 = merge_sort(sub_array_1)
  sub_array_2 = merge_sort(sub_array_2)

  merge(sub_array_1, sub_array_2)
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]