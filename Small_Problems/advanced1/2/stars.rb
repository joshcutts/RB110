# stars.rb

=begin

Write a method that displays an 8-pointed star in an nxn grid, 
where n is an odd integer that is supplied as an argument to the method. 
The smallest such star you need to handle is a 7x7 grid.


PROBLEM:
input: integer (odd), smallest is 7
output: 8 pointed star in n x n grid where n is an odd integer

EXAMPLES:
star(7)

*  *  * (2 spaces) 1:3
 * * * (1 space) 2:2
  *** (0 spaces) 3:1 
******* 4 ((n+1)/2) 0
  ***
 * * *
*  *  *

DATA STRUCTURE:



ALGORITHM:

display arms
- (n-1)/2 to 1 = counter
  - make a star row
    - 3 stars separated by spaces
    - spaces is counter - 1
  - display star row centered on argued integer

  display center star row

display bottom arms
  - 1 to (n-1)/2
  - make star row (as above)

=end

def display_star_row(counter, n)
  spaces = counter - 1
  star_row = "*" + " " * spaces + "*" + " " * spaces + "*"
  puts star_row.center(n)
end

def star(n)
  (1..(n-1)/2).reverse_each { |counter| display_star_row(counter, n)}
  puts "*" * n
  (1..(n-1)/2).each {|counter| display_star_row(counter, n)}
end

star(7)
puts
star(9)