# merge.rb

=begin

Write a method that takes two sorted Arrays as arguments, and returns a new 
Array that contains all elements from both arguments in sorted order.

You may not provide any solution that requires you to sort the result array. 
You must build the result array one element at a time in the proper order.

Your solution should not mutate the input arrays.


PROBLEM:
input: two arrays
output: one sorted array

EXAMPLES:
merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
merge([], [1, 4, 5]) == [1, 4, 5]
merge([1, 4, 5], []) == [1, 4, 5]

DATA STRUCTURE

ALGORITHM:
- initialize empty array to hold final result
- iterate through the arrays one element at a time at the same index
- compare the elements from each array at the particular index
- if neither element from array1 or array2 is nil perform the following comparison
  - if element from array1 is less than element from array2
    - add element from array1 then element from array2
  - otherwise add element from array2 then element from array1
- otherwise add the non-nil element to the final array
- return the final array

=end

# def merge(a1, a2)
#   merged = []
#   max = [a1.length, a2.length].max
#   (0...max).each do |i|
#     if a1[i] == nil || a2[i] == nil
#       a1[i] == nil ? (merged << a2[i]) : (merged << a1[i])
#     else
#       if merged.length > 1 && (a1[i] < merged[-1] || a2[i] < merged[-1])
#         if a1[i] < merged[-1] 
#           (merged.insert(-2, a1[i])) 
#           merged << a2[i]
#         else
#           (merged.insert(-2, a2[i]))
#           merged << a1[i]
#         end
#       elsif a1[i] < a2[i]
#         merged << a1[i] << a2[i]
#       else
#         merged << a2[i] << a1[i]
#       end
#     end
#   end
#   merged
# end

def merge(a1, a2)
  return a1.empty? ? a2 : a1 if a1.empty? || a2.empty?
  
  merged = []
  a1.each { |e| merged << e}
  
  a2.each do |e|
    higher = merged.find {|x| x > e}
    index = merged.index(higher)
    merged.insert(index, e)
  end
  merged
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]

