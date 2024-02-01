=begin

A bubble sort works by making multiple passes (iterations) through the Array. 
On each pass, each pair of consecutive elements is compared. If the first of 
the two elements is greater than the second, then the two elements are swapped. 
This process is repeated until a complete pass is made without performing any 
swaps; at that point, the Array is completely sorted.


array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

PROBLEM:
input: array
output: sorted array

EXAMPLES:
array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

DATA STRUCTURE:


ALGORITHM:
- initialize an array with length - 1 booleans set to true
- while there are any true values in the array
  - loop through the array and compare adjacent array values
    - if the value to the right is less than the value to the right
      - swap them
      - replace swap for that iteration to true
    - otherwise replace the current iteration boolean to false
- return sorted array
=end

# def bubble_sort!(arr)
#   bool_arr = []
#   (arr.length-1).times {bool_arr << true}
#   while bool_arr.any?(true)
#     (0...arr.length-1).each do |index|
#       current_el = arr[index]
#       next_el = arr[index+1]
#       if next_el < current_el
#         arr[index], arr[index+1] = arr[index+1], arr[index]
#         bool_arr[index] = true
#       else
#         bool_arr[index] = false
#       end
#     end
#   end
#   arr
# end


def bubble_sort!(arr)
  loop do
    swapped = false
    1.upto(arr.size - 1) do |index|
      next if arr[index-1] <= arr[index]
      arr[index-1], arr[index] = arr[index], arr[index-1]
      swapped = true
    end

    break unless swapped
  end
end

array = [5, 3]
bubble_sort!(array)
p array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
p array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)