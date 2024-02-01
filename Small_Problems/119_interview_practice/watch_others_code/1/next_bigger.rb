=begin

You have to create a method that takes a postitive integer
and returns the next bigger number formed by the same digits

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 251
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456789

PROBLEM:
input: integer
output: next largest integer with the same digits

EXAMPLES:
p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798

DATA STRUCTURE:

ALGORITHM:
- if the integer is < 10, return -1
- create an array of the integers of the input integer
- create a loop
  - iterate on the input integer until the current integer has the same digits as the input integer, return that number
  - break if the number of digits is greater than the input # of digits
- return -1

=end

def next_bigger_num(int)
  return -1 if int < 10
  int_array = int.digits
  loop do
    int += 1
    return int if int.digits.sort == int_array.sort
    break if int > int_array.sort.reverse.join.to_i
  end
  -1
end

p next_bigger_num(9) == -1
p next_bigger_num(12) == 21
p next_bigger_num(513) == 531
p next_bigger_num(2017) == 2071
p next_bigger_num(111) == -1
p next_bigger_num(531) == -1
p next_bigger_num(123456789) == 123456798
p next_bigger_num(59884848459853)