# array_diff2.rb

=begin

remove all values from list a which are present in list b
maintain order of list a

must remove all occurences

EXAMPLES:
p array_diff([1,2], [1]) == [2]
p array_diff([1,2,2], [1]) == [2,2]
p array_diff([1,2,2], [2]) == [1]
p array_diff([1,2,2], []) == [1,2,2]
p array_diff([], [1,2]) == []
p array_diff([1,2,3], [1,2]) == [3]

DATA STRUCTURE:


ALGORITHM:
- if array a is empty, return empty array
- if array b is empty, return array a
- iterate through array b one element at a time
- delete eacch element from array a
- return updated array a


=end

def array_diff(a, b)
  return [] if a.empty?
  return a if b.empty?
  b.each do |element|
    a.delete(element)
  end
  a
end

p array_diff([1,2], [1]) == [2]
p array_diff([1,2,2], [1]) == [2,2]
p array_diff([1,2,2], [2]) == [1]
p array_diff([1,2,2], []) == [1,2,2]
p array_diff([], [1,2]) == []
p array_diff([1,2,3], [1,2]) == [3]