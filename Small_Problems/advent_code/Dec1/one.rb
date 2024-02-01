# one.rb

=begin

PROBLEM:
input: multiple strings with letters and numbers
output: sum of 2 digit "calibration values" per string

EXAMPLES

=end
# test_cases = [
# "1abc2", 
# "pqr3stu8vwx", 
# "a1b2c3d4e5f", 
# "treb7uchet"
# ]
Dir.chdir("/Users/joshuacutts/Documents/LaunchSchool/advent_of_code/1December")
arr = File.read('day1_input.txt').split(/\n/)
# p arr

def calibration_value(string)
  numbers = string.gsub(/[a-z]/, "")
  final = (numbers[0] + numbers[-1]).to_i
end

def calculate_sum(array)
  array.map {|string| calibration_value(string)}.sum
end

# p calibration_value("fivethreeonezblqnsfk1")
p calculate_sum(arr)