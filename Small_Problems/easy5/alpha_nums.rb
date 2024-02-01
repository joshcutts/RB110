# alpha_nums.rb

=begin

PROBLEM:
input: array of integers between 0 and 19
output: array of integers sorted based on english word for each number

EXAMPLES:
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

ALGORITHMS:
- convert integer array to word array
- sort the word array
- convert the word array back to integers

=end

integer_words = %w(zero, one, two, three, four, five, six, seven, eight, nine, ten, eleven, twelve, thirteen, fourteen, fifteen, sixteen, seventeen, eighteen, nineteen)
integers = (0..19).to_a

INT_TO_WORDS = integers.zip(integer_words).to_h
WORDS_TO_INT = integer_words.zip(integers).to_h

# def alphabetic_number_sort(array)
#   sorted_words = array.map {|integer| INT_TO_WORDS[integer]}.sort
#   sorted_words.map {|word| WORDS_TO_INT[word]}
# end

def alphabetic_number_sort(array)
  array.sort_by {|int| INT_TO_WORDS[int]}
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

