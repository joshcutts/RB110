
=begin

Create a method called "power" that takes two integers and returns the value of the first argument raised 
to the power of the second. Return nil if the second argument is negative.

Note: The ** operator has been disabled.

Examples:

power(2, 3) # 8
power(10, 0) # 1
power(-5, 3) # -125
power(-4, 2) # 16

DATA STRUCTURE:
array to hold multiples

[1, 2, 4, 8]

ALGORITHM:
- return nil if power is < 0
- create an array with 1 element in it, 1
- start counter at 1
- start a loop
  - add argued base (1st integer)
  - increment counter
  - leave loop when counter is equal to power (2nd integer)
- return power (2nd integer) number from array 



=end

def power(base, exp)
  return nil if exp < 0
  powers = [1]
  counter = 1
  num = base
  loop do
    powers << num
    num *= base
    counter += 1
    break if counter > exp
  end
  powers[exp]
end


p power(10, 0) == 1
p power(2, 3) == 8
p power(3, 2) == 9
p power(-5, 3) == -125
p power(-4, 2) == 16
p power(8, -2) == nil
