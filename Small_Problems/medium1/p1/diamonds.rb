# diamonds.rb

=begin

PROBLEM:
input: odd integer
output: a diamond of *


explicit: 
implicit: 

EXAMPLES:

diamond(3)

 *
***
 *


diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *

ALGORITHM:
- initialize star # at 1
- from 1..n/2
- print number of stars, center on n
- add 2 to the number of start
-
- print n number of stars
- from (n/2)..1
- print number of stars, centered on n
- subtract 2 from number of stars



=end

# def diamond(n)
#   star_number = 1
#   (n/2).times do
#     puts ("*" * star_number).center(n)
#     star_number += 2
#   end
#   star_number -= 2

#   puts "*" * n

#   (n/2-1).times do
#     puts ("*" * star_number).center(n)
#     star_number -= 2
#   end
#   puts "*".center(n)
# end



# initial solution
# def diamond(max_width)
#   rows = get_rows(max_width)
#   display_diamond(rows)
# end

# def get_rows(max_width)
#   row_widths = get_row_widths(max_width)
#   row_widths.map { |row_width| ('*' * row_width).center(max_width) }
# end

# def get_row_widths(max_width)
#   top_row_widths = (1..max_width).step(2).to_a
#   bottom_row_widths = (top_row_widths - [max_width]).reverse
#   top_row_widths + bottom_row_widths
# end

# def display_diamond(rows)
#   rows.each { |row| puts row }
# end

# diamond(9)

def diamond(n)
  half_one = []
  (1..n).each {|x| half_one << x if x.odd?}
  half_two = []
  (n-2).downto(1).each {|x| half_two << x if x.odd?}
  nums = (half_one + half_two)
  nums.each {|star| puts ("*" * star).center(9)}
end

p diamond(9)
