=begin


Write a function, persistence, that takes in a positive parameter num and returns its 
multiplicative persistence, which is the number of times you must multiply the digits 
in num until you reach a single digit.

39 --> 3 (because 3*9 = 27, 2*7 = 14, 1*4 = 4 and 4 has only one digit)
999 --> 4 (because 9*9*9 = 729, 7*2*9 = 126, 1*2*6 = 12, and finally 1*2 = 2)
4 --> 0 (because 4 is already a one-digit number)

PROBLEM:
input: integer
output: integer, # of times, multiply the digits in the number until you reach single digit

EXAMPLES:
p persistence(39) == 3
p persistence(4) == 0
p persistence(25) == 2
p persistence(999) == 4
p persistence(444) == 3

DATA STRUCTURE:
- array of the digits

ALGORITHM:
- initalize counter at 1
- start a loop until number is less than 10
  - on each iteration reassign the inital number to the product of the digits in the number
  - iterate the counter
- return the counter



=end

def persistence(num)
  counter = 0
  while num >= 10
    num = num.digits.inject(:*)
    counter += 1
  end
  counter
end

p persistence(39) == 3
p persistence(4) == 0
p persistence(25) == 2
p persistence(999) == 4
p persistence(444) == 3