# find_peaks.rb

=begin

=begin
In this kata, you will write a function that returns the positions and the values of the "peaks" (or local maxima) of a numeric array.

For example, the array `arr = [0, 1, 2, 5, 1, 0]` has a peak at position `3` with a value of `5` (since `arr[3]` equals `5`).

The output will be returned as an object with two properties: pos and peaks. Both of these properties should be arrays. 
If there is no peak in the given array, then the output should be `{pos: [], peaks: []}`.

Example: `pickPeaks([3, 2, 3, 6, 4, 1, 2, 3, 2, 1, 2, 3])` should return `{pos: [3, 7], peaks: [6, 3]}` (or equivalent in other languages)

All input arrays will be valid integer arrays (although it could still be empty), so you won't need to validate the input.

The first and last elements of the array will not be considered as peaks (in the context of a mathematical function, we don't 
know what is after and before and therefore, we don't know if it is a peak or not).

Also, beware of plateaus !!! `[1, 2, 2, 2, 1]` has a peak while `[1, 2, 2, 2, 3]` and `[1, 2, 2, 2, 2]` do not. In case of a plateau-peak, 
  please only return the position and value of the beginning of the plateau. For example: `pickPeaks([1, 2, 2, 2, 1])` 
  returns `{pos: [1], peaks: [2]}` (or equivalent in other languages)

p pick_peaks([1,2,3,6,4,1,2,3,2,1]) == {"pos"=>[3,7], "peaks"=>[6,3]}
p pick_peaks([3,2,3,6,4,1,2,3,2,1,2,3]) == {"pos"=>[3,7], "peaks"=>[6,3]}
p pick_peaks([3,2,3,6,4,1,2,3,2,1,2,2,2,1]) == {"pos"=>[3,7,10], "peaks"=>[6,3,2]}
p pick_peaks([2,1,3,1,2,2,2,2,1]) == {"pos"=>[2,4], "peaks"=>[3,2]}
p pick_peaks([2,1,3,1,2,2,2,2]) == {"pos"=>[2], "peaks"=>[3]}



PROBLEM:
input: array of integers
output: hash of positions and peaks (values) of "peaks"
peaks are defined as local maximums in the argued array (integers which are greater than the integer tha follows), Excludes index 0 and last element of array

EXAMPLES:
[1,2,3,6,4,1,2,3,2,1]

{"pos" => [3, 7], "peaks" => [6, 3]}

[3,2,3,6,4,1,2,3,2,1,2,2,2,1]

{"pos" => [3, 7, 10], "peaks" => [6, 3, 2]}

ALGORITHM:
- iterate through the elements of the array with index
- if the current element is greater than the previous element && the current element is greater than the next element
  - add position (index) to pos array and peak (value) to peaks array
- if the current element is greater than the previous element && equal to the next element
  - start a loop
    - iterate to the end of the array
    - if any element is less than the element starting this loop, it was a peak, add to hash
- return the hash


=end

def pick_peaks(arr)
  result = {"pos" => [], "peaks" => []}
  (1...arr.length-1).each do |index|
    prev = arr[index-1]
    num = arr[index]
    next_num = arr[index+1]
    if num > prev && num > next_num
      result["pos"] << index
      result["peaks"] << num
    elsif num > prev && num == next_num
      plateau_index = index
      until arr[plateau_index] != num || plateau_index == (arr.length - 1 )
        plateau_index += 1
        if arr[plateau_index] < num
          result["pos"] << index
          result["peaks"] << num
        end
      end
    end
  end
  result
end

p pick_peaks([1,2,3,6,4,1,2,3,2,1]) == {"pos"=>[3,7], "peaks"=>[6,3]}
p pick_peaks([3,2,3,6,4,1,2,3,2,1,2,3]) == {"pos"=>[3,7], "peaks"=>[6,3]}
p pick_peaks([3,2,3,6,4,1,2,3,2,1,2,2,2,1]) == {"pos"=>[3,7,10], "peaks"=>[6,3,2]}
p pick_peaks([2,1,3,1,2,2,2,2,1]) == {"pos"=>[2,4], "peaks"=>[3,2]}
p pick_peaks([2,1,3,1,2,2,2,2]) == {"pos"=>[2], "peaks"=>[3]}
