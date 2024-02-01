#next_bigger.rb
=begin

ALGORITHM:
- iterate through the stringified integer backwards
- if the next num is less than the current num
  - split the array into 2 arrays at this point into 1st half and 2nd half
  - move the last character of the 1st half to the end of the 2nd half

=end

arr = 21581957621.to_s.split("").map(&:to_i)

def test(arr)
  pivot_index = arr.reverse_each.with_index do |n, i|
    if arr[-i-2] < n
      break(-i-2)
    end
  end
  pivot_index
  first_half = arr[0..pivot_index]
  second_half = arr[(pivot_index+1)..-1]
end

p test(arr)