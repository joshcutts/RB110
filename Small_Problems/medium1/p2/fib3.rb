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

# def fibonacci_last(n)
#   fibonacci(n).to_s[-1].to_i
# end

def fibonacci_last(n)
  last_2 = [1, 1]
  3.upto(n) do
    last_2 = [last_2.last, (last_2.first + last_2.last) % 10]
  end
  last_2.last
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
# p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
# p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
# p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
# p fibonacci_last(123456789) # -> 4