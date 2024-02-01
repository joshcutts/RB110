# grocery_list.rb

=begin

Write a method which takes a grocery list (array) of fruits with quantities 
and converts it into an array of the correct number of each fruit.

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]


PROBLEM:
input: nested arrays where element 1 is a string representing a fruit & element 2 is integer
output: new array with number of fruits as strings

EXAMPLES:
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

DATA STRUCTURE:


ALGORITHM:
- create a new empty array to hold the final result
- iterate through the given nested array
  - add the given fruit string integer number of times to the result array
- return the result array

=end

def buy_fruit(arr)
  result = []
  arr.each do |subarr|
    subarr[1].times {result << subarr[0]}
  end
  result
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==  ["apples", "apples", "apples", "orange", "bananas","bananas"]