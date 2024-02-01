=begin

PROBLEM:
input: time and distance arrays
output: integer of multiplied integers
each multiplied integer is the number of ways to beat the record

EXAMPLE
Time: [7, 15, 30]
Distance: [9, 40, 200]

DATA STRUCTURE

intermediate: speed = number of seconds
remaining_time = time - speed

ALGORITHM:

- create final array to hold # ways to win for each race
- create arrays of time & distance from input
- iterate through the time array (with index)
  create a variable that counts # of ways for each race to beat the given distance
  - iterate through a range of 0..time
    - each time is also the speed
    - the remaining time is time - speed
    - distance traveled is remaining time * speed
    - if the distance calculated is greater than distance in array, iterate a counter
  - add the count to the final array
  - return the muliplicative sum of the result array

=end

times = [58996469]
distance = [478223210191071]

final_array = []

times.each_index do |index|
  winning_counter = 0
  (14..times[index]).each do |time|
    speed = time
    remaining_time = times[index] - time
    new_distance = remaining_time * speed
    winning_counter += 1 if new_distance > distance[index]
  end
  final_array << winning_counter
end

p final_array