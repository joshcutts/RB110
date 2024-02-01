=begin

Write a method that takes an Array as an argument, 
and reverses its elements in place; that is, mutate
 the Array passed into this method. The return value should be the same Array object.

You may not use Array#reverse or Array#reverse!.

list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true

=end


=begin

PROBLEM:
input: array
output: reversed array, same object is reversed

EXAMPLES:
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true

DATA STRUCTURE:
[1,2,3,4]

swap index 1
[4, 2, 3, 1]
swap index 2
[4, 3, 2, 1]


ALGORITHM:
- index = 1
- length/2 times do the following procedure
  - swap elements at given positive & negative index
  - add one to index
- return array

=end

def reverse!(arr)
  index = 1
  (arr.length/2).times do |x|
    arr[index-1], arr[-index] = arr[-index], arr[index-1]
    index += 1
  end
  arr
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true