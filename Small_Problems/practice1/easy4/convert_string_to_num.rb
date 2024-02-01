=begin

convert string to integer without using built in methods

string_to_integer('4321') == 4321
string_to_integer('570') == 570

=end

=begin

PROBLEM:
input: string
output: integer representation of the given string

assume we are only given valid number characters
ignore negative numbers for now

EXAMPLES:
string_to_integer('4321') == 4321
string_to_integer('570') == 570

DATA STRUCTURE:
could use a hash to convert string numbers to integer values
{"1"=>1, "2"=>2, "3"=>3....}

"4321"
length = length -1 (3)


ALGORITHM:
- create array of strings "0" to "9"
- create array of integers 0 to 9
- create hash from the given arrays generated above
- create a number initialized at 0 to hold final result
- initialize a multiplier at 1
- iterate through the hash in reverse
  - on each iteration add the integer conversion (use hash) times multiplier
  - multiply the multiplier by 10
- return the number, which is the sum of the iteration

=end


def string_to_integer(str)
  str_num = ("0".."9").to_a
  nums = (0..9).to_a
  str_to_num = str_num.zip(nums).to_h

  sum = 0
  multiplier = 1
  str.chars.reverse_each do |str_num| 
    sum += str_to_num[str_num] * multiplier
    multiplier *= 10
  end
  sum
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570



