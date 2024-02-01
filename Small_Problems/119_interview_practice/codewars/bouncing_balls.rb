# bouncing_balls.rb


=begin

A child is playing with a ball on the nth floor of a tall building. 
The height of this floor above ground level, h, is known.

He drops the ball out of the window. The ball bounces (for example), to two-thirds of its height 
(a bounce of 0.66).

His mother looks out of a window 1.5 meters from the ground.

How many times will the mother see the ball pass in front of her window (including when it's 
falling and bouncing)?

Three conditions must be met for a valid experiment:
Float parameter "h" in meters must be greater than 0
Float parameter "bounce" must be greater than 0 and less than 1
Float parameter "window" must be less than h.
If all three conditions above are fulfilled, return a positive integer, otherwise return -1.

PROBLEM:
input: 3 integers
output: positive integer which is the product of integer 1 * integer 2

-1 if 
1) int1 <= 0
2) int2 <= 0 or >= 1
3) int3 > int1

EXAMPLES

- h = 3, bounce = 0.66, window = 1.5, result is 3

- h = 3, bounce = 1, window = 1.5, result is -1 


DATA STRUCTURE:


ALGORITHM:
- if int1 <= 0 or int2 <= 2 or int2 >= 1 or int3 > int1 return -1
- initialize count at 1
- initialize height at int1
- start loop
  - reassign height to height * int2
  - iterate count if height is > int3
  - break if height is < int3
- return count

=end

def bouncingBall(int1, int2, int3)
  cond1 = (int1 <= 0)
  cond2 = (int2 <= 0)
  cond3 = (int2 >= 1)
  cond4 = (int3 > int1)

  if (cond1 || cond2 || cond3 || cond4)
    return -1
  end
  
  count = 1

  loop do
    int1 = int1 * int2
    count += 2 if int1 > int3
    break if int1 < int3
  end
  count
end

p bouncingBall(3, 0.66, 1.5) == 3
p bouncingBall(30, 0.66, 1.5) == 15
p bouncingBall(30, 0.75, 1.5) == 21
p bouncingBall(30, 0.4, 10) == 3
p bouncingBall(40, 1, 10) == -1
p bouncingBall(-5, 0.66, 1.5) == -1