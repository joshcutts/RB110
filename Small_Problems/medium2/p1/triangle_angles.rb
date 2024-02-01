# triangle_angles.rb

=begin

PROBLEM:
input: 3 integers, putative triangle angles
output: triangle classification as symbol

valid triangle
1) sum is 180
2) all angles > 0

=end

def triangle(angle1, angle2, angle3)
  angle_array = [angle1, angle2, angle3]
  sum = angle_array.sum
  greater_than_zero = angle_array.any? {|angle| angle <= 0}

  return :invalid if sum != 180 || greater_than_zero

  if angle_array.all? {|angle| angle < 90}
    return :acute
  elsif angle_array.any?(90)
    return :right
  else
    return :obtuse
  end

end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid