# triple.rb

=begin

PROBLEM:
input: 2 integers
output: 1 if there is a stright truple of any number in num1 
and straight double of the SAME num in number2

0 otherwise

EXAMPLES:
p triple_double(451999277, 41177722899) == 1
p triple_double(1222345, 12345) == 0
p triple_double(12345, 12345) == 0
p triple_double(666789, 12345667) == 1
p triple_double(10560002, 100) == 1
p triple_double(1112, 122) == 0

DATA STRUCTURE:
arrays of consecutive digits

ALGORITHM:
- convert each number to string
- for each string, find consecutive of 3 and 2 respectively
- for 1st number string
  - check if all the nums are the same in any consecutive split
  - if it is use that number to check for striaght double in num2
    - if it is return 1
- return 0

=end

def triple_double(num1, num2)
  str_num1 = num1.to_s
  str_num2 = num2.to_s
  num1_arr = str_num1.chars.each_cons(3).to_a
  num2_arr = str_num2.chars.each_cons(2).to_a
  num1_arr.each do |subarr|
    if subarr.all?(subarr[0])
      n = subarr[0]
      num2_arr.each do |subarr2|
        if subarr2.all?(n)
          return 1
        end
      end
    end
  end
  0
end

p triple_double(451999277, 41177722899) == 1
p triple_double(1222345, 12345) == 0
p triple_double(12345, 12345) == 0
p triple_double(666789, 12345667) == 1
p triple_double(10560002, 100) == 1
p triple_double(1112, 122) == 0