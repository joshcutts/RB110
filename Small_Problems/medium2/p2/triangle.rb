# triangle.rb

=begin

To be a valid triangle, the sum of the lengths of the two shortest 
sides must be greater than the length of the longest side, and all 
sides must have lengths greater than 0: if either of these conditions 
is not satisfied, the triangle is invalid.

PROBLEM:
input: 3 integers representing the sides of a triangle
output: triangle classification

equilateral if all 3 sides are equal
isosceles if 2 sides are equal & third length diff
scalene if all 3 sides have different length
invlaid if not a triangle (sum of 2 shortest sides is not greater than longest side)


EXAMPLES:
triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid


DATA STRUCTURE:

ALGORITHM:



=end

def triangle(s1, s2, s3)
  sorted_side = [s1, s2, s3].sort
  return :invalid if sorted_side.any?(0)
  return :invalid if sorted_side[0,2].sum < sorted_side[-1]

  if s1 == s2 && s2 == s3
    :equilateral
  elsif s1 == s2 || s2 == s3 || s3 == s1
    :isosceles
  else
    :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid

