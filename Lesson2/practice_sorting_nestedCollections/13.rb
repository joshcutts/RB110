arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

sorted_arr = arr.sort_by {|subarr| subarr.select {|el| el.odd? }}
p sorted_arr

=begin

sub-arrays are compared element by element. Thus when looking at the
first element of each they are all equal. If we were to include
the even integers in our comparison, the order would be different since 
`6` is less than `8`.

By performing selection on the sub-arrays that we are comparing, we can compare
them based on the value of the odd integers alone.

=end