# delete_nth.rb

=begin

Enough is enough!
Alice and Bob were on a holiday. Both of them took many pictures of the places they've been, and now they want to show Charlie their entire collection. 
However, Charlie doesn't like these sessions, since the motif usually repeats. He isn't fond of seeing the Eiffel tower 40 times.
He tells them that he will only sit for the session if they show the same motif at most N times. Luckily, Alice and Bob are able 
to encode the motif as a number. Can you help them to remove numbers such that their list contains each number only up to N times, without changing the order?

Task
Given a list and a number, create a new list that contains each number of list at most N times, without reordering.
For example if the input number is 2, and the input list is [1,2,3,1,2,1,2,3], you take [1,2,3,1,2], drop the next [1,2] since this would lead to 1 and 2 being in the result 3 times,
 and then take 3, which leads to [1,2,3,1,2,3].
With list [20,37,20,21] and number 1, the result would be [20,37,21].

PROBLEM:
input: array and integer number
output: selected array where each element only appears at most n times

EXAMPLES:
p delete_nth([20,37,20,21], 1) == [20,37,21] #, "From array [20,37,20,21],1 you get")
p delete_nth([1,1,3,3,7,2,2,2,2], 3) == [1, 1, 3, 3, 7, 2, 2, 2] #, "From array [1,1,3,3,7,2,2,2,2],3 you get")
[1,2,3,1,2,1,2,3] => [1,2,3,1,2,3]

DATA STRUCTURE:
hash to keep count and final array

{
  1 => 1
  2 => 1
}

ALGORITHM:
- create new empty array to hold the final selected numbers
- create a hash to keep count of the 
- iterate through the array
  - increment the count of the num if it already exists in the hash
    - if the count is >= n (argument) don't add to the selected_numbers hash
    - otherwise add the number to the selected_numbers hash
  - otherwise add the num to the hash and initialize the count at 1
    -add the number to the selected numbers hash
- return the selected numbers hash

=end

def delete_nth(arr, n)
  selected_numbers = []
  number_count = {}
  arr.each do |num|
    if number_count.keys.include?(num)
      number_count[num] += 1
      selected_numbers << num unless number_count[num] > n
    else
      number_count[num] = 1
      selected_numbers << num
    end
  end
  selected_numbers
end

p delete_nth([20,37,20,21], 1) == [20,37,21] 
p delete_nth([1,1,3,3,7,2,2,2,2], 3) == [1, 1, 3, 3, 7, 2, 2, 2]