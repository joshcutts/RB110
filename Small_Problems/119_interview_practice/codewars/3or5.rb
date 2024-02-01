=begin

PROBLEM:
input: integer
output: integer which is the sum of factors from 1 to n-1
which are factors of 3 or 5

only include each factor 1 time


EXAMPLES:
p threeorfive(10) == 23
p threeorfive(20) == 78
p threeorfive(200) == 9168

DATA STRUCTURE:

10
[3 5 6 9] == 23 

ALGORITHM:
- create empty result array to hold multiples of 3 or 5
- iterate from 1 to n-1
  - if current number is evenly divisible by 3 or 5 add to result array
- return sum of result array


=end

def threeorfive(num)
  (1...num).map { |n| n if (n % 3 == 0 || n % 5 == 0) }.compact.sum
end


p threeorfive(10) == 23
p threeorfive(20) == 78
p threeorfive(200) == 9168