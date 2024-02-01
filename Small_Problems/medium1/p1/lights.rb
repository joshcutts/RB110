# lights.rb

=begin

PROBLEM:
intially lights are off (0)
1st pass: turn on every light
2nd pass: turn off every even light (2, 4, 6...)
3rd pass: turn off every third light (3, 6, 9...)
continue for n repitions
input: integer
output: array of lights that are on or off


explicit

EXAMPLES:

fury_of_lights(5) == [1, 4]

fury_of_lights(10) == [1, 4, 9]


DATA STRUCTURE:
arrays
0: [0, 0, 0, 0, 0]
1: [1, 1, 1, 1, 1] every light
2: [1, 0, 1, 0, 1] (2, 4, 6)
3: [1, 0, 0, 0, 1] (3, 6, 9)
4: [1, 0, 0, 1, 1] (4, 8, 12)
5: [1, 0, 0, 1, 0] (5, 10, 15)

light_count = index+1

ALGORITHM

- initailize an array with n elements of "1" 9 (on) which is round 1
- initialize a switches variable to keep track of which swiches on each round are turned on/off
- iterate through the entire array n-1 times 
- on every iteration switch the value of the light at "switches" position
- map to create a new array with index positions of lights that are "on"
- remove any empty positions
- return the array

=end

def fury_of_lights(n)
  lights = []
  n.times {lights << "1"}
  switches = 2
  (n-1).times do
    (0..n-1).each do |position|
      if (position + 1) % switches == 0
        if lights[position] == "1"
          lights[position] = "0"
        else
          lights[position] = "1"
        end
      end
    end
    switches += 1
  end

  lights.map.with_index {|light, index| index+1 if light == "1"}.compact
end

p fury_of_lights(5) == [1, 4 ]
p fury_of_lights(10) == [1, 4, 9]