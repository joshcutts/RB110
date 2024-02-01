# next_bigger.rb

=begin

Create a function that takes a positive integer and returns the next bigger number that can be formed by rearranging its digits. For example:

12 ==> 21
513 ==> 531
2017 ==> 2071

If the digits can't be rearranged to form a bigger number, return -1 (or nil in Swift, None in Rust):

9 ==> -1
111 ==> -1
531 ==> -1

PROBLEM:
input: integer
output: next bigger integer composed on the same digits

EXAMPLES:
p next_bigger(12) == 21
p next_bigger(513) == 531
p next_bigger(2017) == 2071
p next_bigger(414) == 441
p next_bigger(144) == 414

DATA STRUCTURE:
array of the given integers

ALGORITHM:
- start a loop
  - add one to the argued integer
  - if the new integer has the same digits as the original int, return the new integer
  - break if the length is greater than the original integer length
- return -1

=end

def next_bigger(num)
  new_num = num
  loop do
    new_num += 1
    return new_num if num.digits.sort == new_num.digits.sort
    break if new_num.digits.length > num.digits.length
  end
  -1
end

p next_bigger(12) == 21
p next_bigger(513) == 531
p next_bigger(2017) == 2071
p next_bigger(414) == 441
p next_bigger(144) == 414