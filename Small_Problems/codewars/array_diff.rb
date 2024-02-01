!#array_diff.rb

=begin
Your goal in this kata is to implement a difference function, which subtracts one list from another and returns the result.
It should remove all values from list a, which are present in list b.
array_diff([1,2],[1]) == [2]
If a value is present in b, all of its occurrences must be removed from the other:
array_diff([1,2],[1]) == [2]
=end

# p array_diff([1,2], [1]) == [2]
# p array_diff([1,2,2], [1]) == [2,2]
# p array_diff([1,2,2], [2]) == [1]
# p array_diff([1,2,2], []) == [1,2,2]
# p array_diff([], [1,2]) == []
# p array_diff([1, 2, 3, 3, 2], [3, 2]) == [1]

=begin

PROBLEM:
input: 2 arrays (array1, array2)
output: 1 new array where the elements from array 2 are removed from original array1



EXAMPLES:
p array_diff([1,2], [1]) == [2]
p array_diff([1,2,2], [1]) == [2,2]
p array_diff([1,2,2], [2]) == [1]
p array_diff([1,2,2], []) == [1,2,2]
p array_diff([], [1,2]) == []

DATA STRUCTURE:
arrays

[1, 2]


ALGORITHM:
- if array2 is empty, return array1
- if array1 is empty return array 1
- 


=end


def array_diff(array1, array2)
  return array1 if array1.empty? || array2.empty?
  subtracted = array1.clone
  array1.each do |one|
    array2.each do |two|
      subtracted.delete(two)
    end
  end
  subtracted
end

# a = [1, 2]
# p a.delete(1)
# p a


p array_diff([1,2], [1]) #== [2]
p array_diff([1,2,2], [1]) #== [2,2]
p array_diff([1,2,2], [2]) == [1]
p array_diff([1,2,2], []) == [1,2,2]
p array_diff([], [1,2]) == []
p array_diff([1, 2, 3, 3, 2], [3, 2]) #== [1]




=begin

Your goal in this kata is to implement a difference function, which subtracts one list from another and returns the result.

It should remove all values from list `a`, which are present in list `b` keeping their order.

```ruby
array_diff([1,2],[1]) == [2]
```

If a value is present in `b`, all of its occurrences must be removed from the other:

```ruby
array_diff([1,2],[1]) == [2]
```

p array_diff([1,2], [1]) == [2]
p array_diff([1,2,2], [1]) == [2,2]
p array_diff([1,2,2], [2]) == [1]
p array_diff([1,2,2], []) == [1,2,2]
p array_diff([], [1,2]) == []
p array_diff([1,2,3], [1,2]) == [3]

=end
=begin 
Input: Two array's of intgers
Return: List 1, subtract all elements which were in list b. 
Rules and Notes:
#all occurences of every element in second list must be removed from first list.

High-Level:
#iterate the second list 
#on each iteration invoke delete on the first list, removing the current iteration
#return the first list

Algo
1. Inititalize a method taking two args, list 1 and list 2
2. Iterate each element of list 2
  1. Delete current iteration from list 1
3. Return list 1
=end 

require 'pry'

# def array_diff(list1, list2)
#   list2.each do |el_to_delete|
#     list1.delete(el_to_delete)
#   end
#   list1
# end

def array_diff(a, b)
  a-b
end

p array_diff([1,2], [1]) == [2]
p array_diff([1,2,2], [1]) == [2,2]
p array_diff([1,2,2], [2]) == [1]
p array_diff([1,2,2], []) == [1,2,2]
p array_diff([], [1,2]) == []
p array_diff([1,2,3], [1,2]) == [3]