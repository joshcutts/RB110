# featured.rb

=begin

PROBLEM:
input: single integer
output: next 'featured' number greater than the argument
error message if there is no next featured number

featured number definition:
1) odd number
2) multiple of 7
3) digits are unique

EXAMPLES:
featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements

DATA STRUCTURE:


ALGORITHM:
- while the 3 conditions are not met (until)
  - add one to the number
- return error if number > 1023456789
- return the number

=end

def featured(num)
  cond1 = false
  cond2 = false
  cond3 = false
  until cond1 && cond2 && cond3
    num += 1
    cond1 = num.odd?
    cond2 = num % 7 == 0
    cond3 = num.to_s == num.to_s.split("").uniq.join
    # p "#{num}: cond1-#{cond1}, cond2-#{cond2}, cond3-#{cond3}"
    # sleep(2)
    return "error, number too big" if num > 9876543210
  end
  num
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999)
