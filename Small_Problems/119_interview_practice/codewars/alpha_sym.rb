=begin

PROBLEM:
input: array of strings
output: array of integers
where integers represent the # of characters in the analogous string
which are in the same position as in the alphabet

EXAMPLES:
p solve(["abode","ABc","xyzD"]) == [4,3,1]
p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]

DATA STRUCTURE:


ALGORITHM:
- create a hash with character & position in alphabet
- iterate through the array (map)
  - initialize count at 0
  - iterate through the string in the array one char at a time
    - if the char (lowercase) index+1 is equal to the value in hash, iterate count
  - return the count
- return the new array


=end

def solve(arr)
  letters = ("a".."z").to_a
  numbers = (1..26).to_a
  alpha_hash = letters.zip(numbers).to_h
  
  arr.map do |word|
    count = 0
    word.each_char.with_index do |char, index|
      count += 1 if alpha_hash[char.downcase] == index + 1
    end
    count
  end

end

p solve(["abode","ABc","xyzD"]) == [4,3,1]
p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]