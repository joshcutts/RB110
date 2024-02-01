=begin

EXAMPLES:

two1nine == 29
eightwothree == 83
abcone2threexyz == 13
xtwone3four == 24
4nineeightseven2 == 42
zoneight234 == 14
7pqrstsixteen == 76

ALGORITHM
- initialize result empty array to hold numbers
- initialize start_index variable at 0
- initailize end_index variable at 1
- convert the string to an array of numbers
  - iterate through the string one character at a time
    - if the character is an integer, add that to result array
      - iterate the start_index & end_index by one
    - otherwise check if string slice from start_index to end_index is a word_number
      - if it is a word_number, convert that word number to an integer and add to result array
      - start_index is now end_index + 1, end index is new start_index + 1
    - otherwise iterate the end_index
- select the first and last number of the new number array
=end

Dir.chdir("/Users/joshuacutts/Documents/LaunchSchool/advent_of_code/1December")
arr = File.read('day1_input.txt').split(/\n/)
# p arr

test_arr = %w(two1nine
  eightwothree
  abcone2threexyz
  xtwone3four
  4nineeightseven2
  zoneight234
  7pqrstsixteen)
# p arr
def calibration_value_part_two(string)
  result = []
  start_index = 0
  end_index = 0
  string_nums = %w(one two three four five six seven eight nine)
  nums = (1..9).to_a
  string_nums_to_num = string_nums.zip(nums).to_h
  
  loop do
    # p "start #{start_index} end #{end_index} #{string[start_index..end_index]}"
    # sleep(1)
    if string[start_index..end_index].to_i != 0
      result << string[start_index..end_index].to_i 
      start_index = end_index + 1
      end_index = start_index
    elsif string_nums.include?(string[start_index..end_index])
      result << string_nums_to_num[string[start_index..end_index]]
      # start_index += 1
      start_index = end_index + 1
      end_index = start_index
    elsif end_index > string.length - 1 || string[start_index..end_index].length > 5
      start_index += 1
      end_index = start_index
    else
      end_index += 1
    end
    
    break if start_index >= string.length
  end
  result.map!(&:to_s)
  (result[0] + result[-1]).to_i
end

def calculate_sum(array)
  array.map {|string| calibration_value_part_two(string)}.sum
end

# p calibration_value_part_two("abcone2threexyz")

p calculate_sum(arr)

# hash = arr.zip(num_values).to_h

# hash.each {|value| p value}

# p calibration_value_part_two("eight26sixsghd")

# p "eightwothree"[0..0]
