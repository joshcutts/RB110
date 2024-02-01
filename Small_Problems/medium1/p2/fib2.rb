=begin

PROBLEM:
procedural fib

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765


ALGORITHM:
- initialize fib # at 2
- initialize fib index at 3
- use loop to continue until argued integer

=end

def fibonacci(n)
  return 1 if n <= 2
  fib_nums = [1, 1]
  i = 1
  loop do
    fib_nums << fib_nums[i] + fib_nums[i-1]
    i += 1
    break if i + 1 >= n
  end
  fib_nums[-1]
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501