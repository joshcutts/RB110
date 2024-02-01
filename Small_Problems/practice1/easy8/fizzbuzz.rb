# fizzbuzz.rb

=begin

Write a method that takes two arguments: the first is the starting number, 
and the second is the ending number. Print out all numbers from the starting 
number to the ending number, except if a number is divisible by 3, 
print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a 
number is divisible by 3 and 5, print "FizzBuzz".


PROBLEM:
input: starting integer and ending integer
output: print number unless it is divisible by 3 or 5
if number is dibisible by 3 print "Fizz"
if number is divisible by 5 print "Buzz"
if number is divisible by 3 & 5 print "FizzBuzz"


EXAMPLES:

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz


DATA STRUCTURE:


ALGORITHM:
- iterate through the given start range and end range
- if number is divisible by 3 && 5, print "FizzBuzz"
- otherwise if number is divisible by 3 print "Fizz"
- otherwise if number is divisible by 5 print "Buzz"
- otherwise print the number

=end

def fizzbuzz(start_int, end_int)
  result = []
  (start_int..end_int).each do |num|
    if num % 3 == 0 && num % 5 == 0
      result << "FizzBuzz"
    elsif num % 3 == 0
      result << "Fizz"
    elsif num % 5 == 0
      result << "Buzz"
    else
      result << num
    end
  end
  puts result.join(", ")
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz