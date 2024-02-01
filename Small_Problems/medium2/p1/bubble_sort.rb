# bubble_sort.rb

=begin

PROBLEM:
input: array
output: sorted array (mutated)

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
array

ALGORITHM:
- set swap_condition to true (change to false if all elements no required swap)
- while swap_condition is true
  - iterate through the elements of the array
  - swap elements if necessary per <=>
  - if a swap is performed push true to swap_holder array
  - if no swap is performed push false to swap_holder array
  - following completion of the iterations, if all elements are false change swap condtion to false
-end

=end


def bubble_sort!(array)
  swap_condition = true
  while swap_condition
    swap_holder_array = []
    (0..(array.length-1)).each do |i|
      if (array[i] <=> array[i+1]) == 1
        array[i], array[i+1] = array[i+1], array[i]
        swap_holder_array << true
      else
        swap_holder_array << false
      end
    end
    swap_condition = false if swap_holder_array.all?(false)
  end
end

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
p array