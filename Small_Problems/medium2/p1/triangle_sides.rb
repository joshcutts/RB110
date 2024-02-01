# triangle_sides.rb

=begin

PROBLEM:
input: 3 integers
output: symbol of triangle classification

valid triangle:
1) sum of lengths of the 2 shortest sides > longest side
2) all sides have length >0

equilateral: valid triangle && all sides equal to one another
isosceles: valid triangle && 2 sides equal to one another
scalene: valid triangle
invalid: not a valid triangle


EXAMPLES:
triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid

ALGORITHM:
- put nums into an array called sides_array 
- sort the array destructively
- last value is max value
- 1st 2 values are the smaller sides of triangle
- return false if not a valid triangle - 2 conditions above
- equilateral if all sides equal
- isoscles if 2 sides are equal
- scalene otherwise

=end

def triangle(side1, side2, side3)
  sides_array = [side1, side2, side3].sort
  max_side = sides_array[-1]
  if sides_array[0..1].sum < max_side || sides_array.any? {|side| side <= 0}
    return :invalid
  end

  if side1 == side2 && side2 == side3
    return :equilateral
  elsif side1 == side2 || side2 == side3 || side3 == side1
    return :isosceles
  else
    return :scalene
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid