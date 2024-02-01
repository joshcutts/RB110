# find_unique_num.rb

=begin

find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55

PROBLEM:
find the unique number in the array
input:array of integers
output: one integer from the array that occurs once

EXAMPLES:
find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55

DATA STRUCTURE:

ALGORITHM:
- find unique integers from the original array
- iterate through the unique integers
- count the number of times the unique integer appears in the original array
- if the count is 1 return that integer


=end

def find_uniq(array)
  unique_integers = array.uniq
  unique_integers.each do |int|
    return int if array.count(int) == 1
  end
end


p find_uniq([ 1, 1, 1, 2, 1, 1 ]) #== 2
p find_uniq([ 0, 0, 0.55, 0, 0 ]) #== 0.55
