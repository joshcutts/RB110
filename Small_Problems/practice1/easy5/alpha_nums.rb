=begin

=end

word_nums = %w(zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen)
nums = (0..19).to_a
CONVERSION_HASH = nums.zip(word_nums).to_h


# def alphabetic_number_sort(arr)
#   arr.sort_by {|num| CONVERSION_HASH[num]}
# end

def alphabetic_number_sort(arr)
  arr.sort {|a, b| CONVERSION_HASH[a] <=> CONVERSION_HASH[b]}
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]