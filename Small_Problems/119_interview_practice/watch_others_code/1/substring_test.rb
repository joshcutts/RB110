=begin


Given 2 strings, your job is to find out if there is a substring that
appears in both strings. You will return true if you find a substring
that appears in both strings, or false
if you do not.
We only care about substrings that are longer than one letter long.

p substring_test("Something", "Fun") == false
p substring_test("Something", "Home") == true
p substring_test("Something", "") == false
p substring_test("", "Something") == false
p substring_test("BANANA", "banana") == true
p substring_test("test", "lllt") == false
p substring_test("", "") == false
p substring_test("1234567", "541265")
p substring_test("supercalifragilisticexpialidocious", "SoundOfItIsAtrociou") == true

PROBLEM:
input: 2 strings
output: boolean
- true if there is a substring in common between both given strings
- false otherwise

EXAMPLES:
p substring_test("Something", "Fun") == false
p substring_test("Something", "Home") == true
p substring_test("Something", "") == false
p substring_test("", "Something") == false
p substring_test("BANANA", "banana") == true
p substring_test("test", "lllt") == false
p substring_test("", "") == false
p substring_test("1234567", "541265")
p substring_test("supercalifragilisticexpialidocious", "SoundOfItIsAtrociou") == true

DATA STRUCTURE:
"Something"
"S"
"So"
...
"ome"

"Home"
"o"
"om"
"ome"

ALGORITHM
- create arrays of substrings for each string
  - use outer loop to loop through start index
    - use inner loop to loop through lengths of substrings
- iterate through one of the substring arrays and see if it is included in the substring array for the other string
  - if there is a substring in common, return true
- return false if iterated through all substrings and there was not one in common


=end

def generate_substrings(string)
  substrings = []
  (0...string.length).each do |start_index|
    max_length = string.length - start_index
    (1..max_length).each do |length|
      substrings << string[start_index, length]
    end
  end
  substrings.select {|substring| substring.length > 1}
end

def substring_test(string1, string2)
  string1_substrings = generate_substrings(string1)
  string2_substrings = generate_substrings(string2)

  string1_substrings.each do |substring|
    return true if string2_substrings.include?(substring.downcase)
  end
  false
end


p substring_test("Something", "Fun") == false
p substring_test("Something", "Home") == true
p substring_test("Something", "") == false
p substring_test("", "Something") == false
p substring_test("BANANA", "banana") == true
p substring_test("test", "lllt") == false
p substring_test("", "") == false
p substring_test("1234567", "541265")
p substring_test("supercalifragilisticexpialidocious", "SoundOfItIsAtrociou") == true