# find_missing.rb

=begin
Write a method that takes an array of consecutive (increasing) 
letters as input and that returns the missing letter in the array.

You will always get an valid array. And it will be always exactly one letter be missing. The length of the array will always be at least 2.
The array will always contain letters in only one case.

['a','b','c','d','f'] -> 'e'
['O','Q','R','S'] -> 'P'

PROBLEM:
input: array of characters (upper or lowercase)
output: character which is mising from the given array

EXAMPLES:
p find_missing_letter(["a","b","c","d","f"]) == "e"
p find_missing_letter(["O","Q","R","S"]) == "P"
p find_missing_letter(["b","d"]) == "c"
p find_missing_letter(["a","b","d"]) == "c"
p find_missing_letter(["b","d","e"]) == "c"

DATA STRUCTURE:
- array of the alphabet

ALGORITHM:
- create an array of the lowercase and uppercase alphabet
- find the alphabet index of the 1st element of the array
- iterate through the given array
  if the next element in the array is not equal to the next char in the alphabet
    - return the character in the alphabet


=end

def find_missing_letter(arr)
  alpha = ("a".."z").to_a + ("A".."Z").to_a
  index = alpha.index(arr[0])
  arr.each_with_index do |char, i|
    if arr[i+1] != alpha[index+1]
      return alpha[index+1]
    else
      index += 1
    end
  end
end

# def find_missing_letter(arr)
#   ((arr[0]..arr[-1]).to_a - arr)[0]
# end

p find_missing_letter(["a","b","c","d","f"]) == "e"
p find_missing_letter(["O","Q","R","S"]) == "P"
p find_missing_letter(["b","d"]) == "c"
p find_missing_letter(["a","b","d"]) == "c"
p find_missing_letter(["b","d","e"]) == "c"