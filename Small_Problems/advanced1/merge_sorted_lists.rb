# merge_sorted_lists.rb

=begin

PROBLEM:
input: 2 unsorted arrays
output: 1 sorted array

EXAMPLES:
merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
merge([], [1, 4, 5]) == [1, 4, 5]
merge([1, 4, 5], []) == [1, 4, 5]

ALGORITHM:
- intialize an empty array to hold the final sort
- iterate through the arrays one element at a time
- compare the elements at the current index
  - take the lesser of the two elements and compare to the previous element in the sorted array 
    - if the element is greater than the last element in the current array, add it
    - if not, add it before the final element (insert)
    - then add the element from the other array

=end

def merge(arr1, arr2)
  return arr1 if arr2.empty?
  return arr2 if arr1.empty?
  sorted_array = []

  arr1_length = arr1.length
  arr2_length = arr2.length
  length = [arr1_length, arr2_length].max

  (0..length-1).each do |i|
    if arr1[i] == nil
      if !sorted_array.empty? && arr2[i] < sorted_array[-1]
        sorted_array.insert(-2, arr2[i])
      end
      sorted_array << arr2[i] unless arr2[i] == nil
    elsif arr2[i] == nil 
      if !sorted_array.empty? && arr1[i] < sorted_array[-1]
        sorted_array.insert(-2, arr1[i])
      end
      sorted_array << arr1[i] unless arr2[i] == nil
    elsif arr1[i] < arr2[i]
      if !sorted_array.empty? && arr1[i] < sorted_array[-1]
        sorted_array.insert(-2, arr1[i])
      elsif !sorted_array.empty? && arr2[i] < sorted_array[-1]
        sorted_array.insert(-2, arr2[i])
      end
      sorted_array << arr1[i] unless arr1[i] == nil
      sorted_array << arr2[i] unless arr2[i] == nil
    elsif arr2[i] < arr1[i] 
      if !sorted_array.empty? && arr1[i] < sorted_array[-1]
        sorted_array.insert(-2, arr1[i])
      elsif !sorted_array.empty? && arr2[i] < sorted_array[-1]
        sorted_array.insert(-2, arr2[i])
      end
      sorted_array << arr2[i] unless arr2[i] == nil
      sorted_array << arr1[i] unless arr1[i] == nil
    end
  end
  sorted_array
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) #== [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]