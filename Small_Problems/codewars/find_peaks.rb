# find_peaks.rb

=begin


p pick_peaks([1,2,3,6,4,1,2,3,2,1]) == {"pos"=>[3,7], "peaks"=>[6,3]}
p pick_peaks([3,2,3,6,4,1,2,3,2,1,2,3]) == {"pos"=>[3,7], "peaks"=>[6,3]}
p pick_peaks([3,2,3,6,4,1,2,3,2,1,2,2,2,1]) == {"pos"=>[3,7,10], "peaks"=>[6,3,2]}
p pick_peaks([2,1,3,1,2,2,2,2,1]) == {"pos"=>[2,4], "peaks"=>[3,2]}
p pick_peaks([2,1,3,1,2,2,2,2]) == {"pos"=>[2], "peaks"=>[3]}

PROBLEM:
input: array of integers
output: hash with keys 'pos' & 'peaks'
values are index positions for 'pos'
and integer (value at index) for 'peaks'
OF the 'peaks' in the array
peaks are defined as integers that are greater than the integer that comes before and after it


EXAMPLES:
p pick_peaks([1,2,3,6,4,1,2,3,2,1]) == {"pos"=>[3,7], "peaks"=>[6,3]}
p pick_peaks([3,2,3,6,4,1,2,3,2,1,2,3]) == {"pos"=>[3,7], "peaks"=>[6,3]}
p pick_peaks([3,2,3,6,4,1,2,3,2,1,2,2,2,1]) == {"pos"=>[3,7,10], "peaks"=>[6,3,2]}
p pick_peaks([2,1,3,1,2,2,2,2,1]) == {"pos"=>[2,4], "peaks"=>[3,2]}
p pick_peaks([2,1,3,1,2,2,2,2]) == {"pos"=>[2], "peaks"=>[3]}

DATA STRUCTURE:
[1,2,3,6,4,1,2,3,2,1]

[3,2,3,6,4,1,2,3,2,1,2,2,2,1]

ALGORITHM:
- create empty hash with 'pos' and 'peaks' keys and empty arrays as values
- iterate through the array with index
  - if the current number is greater than the number before it && after it in the array
  - push the index to 'pos' values array in hash & push the integer to 'peaks' values array in hash
  - otherwise look for plateau
- return the hash

plateau peak algo
[1, 2, 2, 2, 1] # => true, index 1, value 2

- iterate through the array
- if the previous value is < current value; this is a putative plateau peak
- iterate through the remainder of the array, if the next values are the same as the current value, continue iterating; otherwise return false
- if the 1st value after the repeat values is less than the putative plateau peak value, then it was a plateau

=end

def plateau?(array)
  plateau = false
  index = 1
  current_int = array[0]
  loop do
    next_int = array[index]
    if current_int == next_int
      index += 1
      break if index >= array.length
      next
    elsif next_int < current_int
      return true
    else
      return false
    end
  end
  plateau
end

# p plateau?([2,2,2,2,1])
# p plateau?([2,2,2,2])


def pick_peaks(array)
  peaks_hash = {'pos' => [], 'peaks' => []}
  index = 1
  loop do
    current_int = array[index]
    previous_int = array[index-1]
    next_int = array[index+1]
    if current_int > previous_int && current_int > next_int
      peaks_hash["pos"] << index
      peaks_hash["peaks"] << current_int
    elsif current_int > previous_int && plateau?(array[index..-1])
      peaks_hash["pos"] << index
      peaks_hash["peaks"] << current_int
    end
    index += 1
    break if index >= array.length - 1
  end
  peaks_hash
end

p pick_peaks([1,2,3,6,4,1,2,3,2,1]) == {"pos"=>[3,7], "peaks"=>[6,3]}
p pick_peaks([3,2,3,6,4,1,2,3,2,1,2,3]) == {"pos"=>[3,7], "peaks"=>[6,3]}
p pick_peaks([3,2,3,6,4,1,2,3,2,1,2,2,2,1]) == {"pos"=>[3,7,10], "peaks"=>[6,3,2]}
p pick_peaks([2,1,3,1,2,2,2,2,1]) == {"pos"=>[2,4], "peaks"=>[3,2]}
p pick_peaks([2,1,3,1,2,2,2,2]) == {"pos"=>[2], "peaks"=>[3]}