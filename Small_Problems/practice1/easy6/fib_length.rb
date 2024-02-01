=begin

find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

=end

=begin

PROBLEM:
input: integer
output: index of the first Fib # that has number of digits 
specified by argument

1st fib number has index 1

EXAMPLES:

find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

DATA STRUCTURE:
array to hold fib numbers

ALGORITHM:
- create an array that has first 2 values of fib sequence [1, 1]
- start index at 3
- while the length of the last fib number is less than argued integed
  - add the last two elements of the array together & add that value to the array
  - add one to the index
- return the index

=end

def find_fibonacci_index_by_length(length)
  fib_seq = [1, 1]
  index = 2
  while fib_seq[-1].digits.length != length
    fib_seq << fib_seq[-1] + fib_seq[-2]
    index += 1
  end
  index
end

p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847