# transform_prime.rb


=begin

PROBLEM:
input: array of n integers
output: minimuim number to insert into list so sum of elements equals closest prime number

EXAMPLES:
p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2

DATA STRUCTURE:


ALGORITHM:
- initialize a num var at 0
- start a loop
  - on each iteration, add the number to the sum of the array
  - if the sum is prime, return the num
  - otherwise increment the number


prime number?
prime number is number > 1 that only has factors 1 and itself
- 

=end

def is_prime?(num)
  return false if num == 1
  factors = []
  (2..num-1).each do |factor|
    factors << factor if num % factor == 0
  end
  factors.empty?
end

def minimum_number(arr)
  num = 0
  loop do
    return num if is_prime?(arr.sum + num)
    num += 1
  end
end


p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2