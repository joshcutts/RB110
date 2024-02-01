# int_reduction.rb

=begin

In this Kata, you will be given two integers n and k and your task is to 
remove k-digits from n and return the lowest number possible, without changing 
the order of the digits in n. Return the result as a string.

Let's take an example of solve(123056,4). We need to remove 4 digits from 
123056 and return the lowest possible number. The best digits to remove are 
(1,2,3,6) so that the remaining digits are '05'. Therefore, solve(123056,4) = '05'.

Note also that the order of the numbers in n does not change: 
solve(1284569,2) = '12456', because we have removed 8 and 9.


# PROBLEM:
input: integer
output: string of integer with k digits removed which is the smallest number when removing 4 digits

EXAMPLES:
p solve(123056,1) == '12056' # removed 3
p solve(123056,2) == '1056' # removed 2 & 3
p solve(123056,3) == '056' # removed 1 2 & 3
p solve(123056,4) == '05' # removed 1 2 3 & 6
p solve(1284569,1) == '124569' # removed 8
p solve(1284569,2) == '12456' # removed 8 & 9
p solve(1284569,3) == '1245' # removed 8 9 & 6
p solve(1284569,4) == '124' # removed 8 9 6 & 5

DATA STRUCTURE:
array of the digits

ALGORITHM:
- perform the smallest num operation k times
- convert number to string and return

find smallest num with removing 1 digit
- convert the integer to a string
- create empty array to hold 1 digit removals
- loop through index of string num
  - slice string to remove 1 digit at a time, convert to integer and add to array
- return the minimum number

=end

# def smallest_num(num)
#   str_num = num.to_s
#   result = []
#   (0...str_num.length).each do |i|
#     result << (str_num[0...i] + str_num[i+1..-1])
#   end
#   result.min_by(&:to_i)
# end

# def solve(num, k)
#   k.times { num = smallest_num(num)}
#   num.to_s
# end

def solve(num, k)
  num.to_s.chars.combination(num.to_s.length-k).to_a.map(&:join)#.min_by(&:to_i)
end

p solve(123056,1) #== '12056'
p solve(123056,2) #== '1056'
p solve(123056,3) #== '056'
p solve(123056,4) #== '05'
# p solve(1284569,1) == '124569'
# p solve(1284569,2) == '12456'
# p solve(1284569,3) == '1245'
# p solve(1284569,4) == '124'