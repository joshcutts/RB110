# lights.rb

=begin

You have a bank of switches before you, numbered from 1 to n. 
Each switch is connected to exactly one light that is initially off. 
You walk down the row of switches and toggle every one of them. 
You go back to the beginning, and on this second pass, you toggle 
switches 2, 4, 6, and so on. On the third pass, you go back again 
to the beginning and toggle switches 3, 6, 9, and so on. You repeat 
this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches,
 and returns an Array that identifies which lights are on after n repetitions.

Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9].


PROBLEM:
input: integer, representing number of lights & repitions
output: array 

EXAMPLES:
p lights(5) == [1, 4]
p lights(10) == [1, 4, 9]

DATA STRUCTURE:
5

initial: [0, 0, 0, 0, 0]
1:       [1, 1, 1, 1, 1]
2:       [1, 0, 1, 0, 1]
3:       [1, 0, 0, 0, 1]
4:       [1, 0, 0, 1, 1]
5:       [1, 0, 0, 1, 0]

ALGORITHM:
- create an array of all 0
- iterate from 1 to n-1 (block parameter x)
  - if index + 1 is evenly divisible by current block argument, switch the value
- return the array with swapped values

=end

def lights(n)
  lights = []
  n.times {lights << 0}
  (1..n).each do |round|
    (0..n-1).each do |light|
      if ((light+1) % round) == 0
        lights[light] == 0 ? (lights[light] = 1) : (lights[light] = 0)
      end
    end
  end
  lights.map.with_index {|light, i| i+1 if light == 1}.compact
end

p lights(5)
p lights(10)
