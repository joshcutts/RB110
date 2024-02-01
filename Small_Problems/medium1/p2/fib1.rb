=begin

The Fibonacci series is a sequence of numbers starting with 1 and 1 where each number 
is the sum of the two previous numbers: the 3rd Fibonacci number is 1 + 1 = 2, the 4th 
is 1 + 2 = 3, the 5th is 2 + 3 = 5, and so on. In mathematical terms:


F(1) = 1
F(2) = 1
F(n) = F(n - 1) + F(n - 2) where n > 2


Write a recursive method that computes the nth Fibonacci number, where nth is an argument to the method.

fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765


PROBLEM:
input: integer
output: fib #

EXAMPLES:
fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765


DATA STRUCTURE:


ALGORITHM:
- set stop condition to 2
- 


=end

def fibonacci(n)
  if n < 2
    n
  else
    fibonacci(n-1) + fibonacci(n-2)
  end
end


p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765