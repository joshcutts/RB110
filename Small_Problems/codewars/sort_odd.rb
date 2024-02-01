#sort_odd.rb

=begin

You will be given an array of numbers. You have to sort the odd numbers in ascending order while leaving the even numbers at their original positions.

Examples
[7, 1]  =>  [1, 7]
[5, 8, 6, 3, 4]  =>  [3, 8, 6, 5, 4]
[9, 8, 7, 6, 5, 4, 3, 2, 1, 0]  =>  [1, 8, 3, 6, 5, 4, 7, 2, 9, 0]

PROBLEM: 
input: unsorted array
output: odd integers sorted, even integers left in place

ALGORITHM:
- create a new array of only the odd integers and sort it
- iterate through the original array
  - if the number even
    - skip it (increment counter)
  - if the number is odd, replace it with the 1st (or next) odd integer from sorted odd integer array
    - increment counter
- return the original mutated array

=end

def sort_array(array)
  return [] if array.empty?
  odd_sorted_integers = array.select { |num| num.odd? }.sort
  odd_counter = 0
  reg_counter = 0

  loop do
    if array[reg_counter].even?
      reg_counter += 1
    else
      array[reg_counter] = odd_sorted_integers[odd_counter]
      odd_counter += 1
      reg_counter += 1
    end
    break if reg_counter >= array.length
  end
  array
end

p sort_array([5, 3, 2, 8, 1, 4, 11]) == [1, 3, 2, 8, 5, 4, 11]
p sort_array([2, 22, 37, 11, 4, 1, 5, 0]) == [2, 22, 1, 5, 4, 11, 37, 0]
p sort_array([1, 111, 11, 11, 2, 1, 5, 0]) ==[1, 1, 5, 11, 2, 11, 111, 0]
p sort_array([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]) == [1, 2, 3, 4, 5, 6, 7, 8, 9, 0]
p sort_array([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]) == [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
p sort_array([0, 1, 2, 3, 4, 9, 8, 7, 6, 5]) == [0, 1, 2, 3, 4, 5, 8, 7, 6, 9]
p sort_array([]) == []
p sort_array([19]) == [19]
p sort_array([2]) == [2]
p sort_array([7,5]) == [5,7]