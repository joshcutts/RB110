# diamond.rb

=begin

Write a method that displays a 4-pointed diamond in an n x n grid, where n is an odd 
integer that is supplied as an argument to the method. You may assume that the argument 
will always be an odd integer.

diamond(1)

*


diamond(3)

 *
***
 *


diamond(9)

    * (1)
   *** (3)
  ***** (5)
 ******* (7)
********* (9)
 ******* (7)
  ***** (5)
   *** (3)
    * (1)


PROBLEM:
input: integer
output: diamond of "*"

EXAMPLES:
diamond(1)

*


diamond(3)

 *
***
 *


diamond(9)

    * (1)
   *** (3)
  ***** (5)
 ******* (7)
********* (9)
 ******* (7)
  ***** (5)
   *** (3)
    * (1)


DATA STRUCTURE:


ALGORITHM:
- create an array of integers which will represent * length for each row
  - initialize empty array  
  - from (n+1)/2 times add odd integer to array, going up
  - (n+1)/2 -1 times, add odd integer to array, going down
- iterate through the array, outputing "*" multiplied by the integer, centered on n

=end

# def diamond(n)
#   arr = []
#   up = (n+1)/2
#   num = 1
#   up.times do |_|
#     if num > 1
#       spaces = num - 2 
#       star_line = "*" + (" " * spaces) + "*"
#       puts (star_line).center(n) 
#     else
#       puts "*".center(n)
#     end

#     num += 2
#   end
#   num -= 4
#   (up-1).times do |_|
#     if num > 1
#       spaces = num - 2 
#       star_line = "*" + (" " * spaces) + "*"
#       puts (star_line).center(n) 
#     else
#       puts "*".center(n)
#     end
#     num -= 2
#   end

# end

def print_row(n, distance_from_center)
  number_of_stars = n - 2 * distance_from_center
  if number_of_stars > 1
    stars = "*" + " " * (number_of_stars-2) + "*"
  else
      stars = "*" * number_of_stars
  end
  puts stars.center(n)
end

def diamond(n)
  max_distance = (n - 1) / 2
  (0..max_distance).reverse_each { | distance| print_row(n, distance)}
  (1..max_distance).each { |distance| print_row(n, distance)}
end

p diamond(5)
