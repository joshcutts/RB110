def triangle(a1, a2, a3)
  angle_arr = [a1, a2, a3]
  return :invalid if angle_arr.sum != 180 || angle_arr.include?(0)
  if angle_arr.include?(90)
    :right
  elsif angle_arr.any? {|angle| angle>90}
    :obtuse
  else
    :acute
  end
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid