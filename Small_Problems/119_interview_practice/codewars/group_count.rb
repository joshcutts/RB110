# group_count.rb

=begin

Your goal is to write the group_and_count method, which should receive and 
array as unique parameter and return a hash. Empty or nil input must return nil 
instead of a hash. This hash returned must contain as keys the unique values of 
the array, and as values the counting of each value.


PROBLEM:
input: array of integers
output: hash where keys are unique values in array and values are counts of each

EXAMPLES:
p group_and_count([0,1,1,0]) == {0=>2, 1=>2}

DATA STRUCTURE:
hash

ALGORITHM:
- initialize hash for counts
- iterate through unique values from argued array
  - add unique value as key and counts as value to hash
- return the hash

=end

# def group_and_count(arr)
#   arr.tally
# end

# def group_and_count(arr)
#   counts = Hash.new(0)
#   arr.uniq.each do |num|
#     counts[num] = arr.count(num)
#   end
#   counts
# end


# def group_and_count(arr)
#   arr.uniq.each_with_object({}) {|num, hash| hash[num] = arr.count(num)}
# end

def group_and_count(arr)
  counts = Hash.new(0)
  arr.each do |num|
    counts[num] += 1
  end
  counts
end


p group_and_count([0,1,1,0]) == {0=>2, 1=>2}