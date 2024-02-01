=begin

ALGORITHM:
- define constant alphabet
- iterate through the array
  - if the next character in the array is not equal to the next element in constant alphabet
    - return that element
  - otherwise go to next check


=end

ALPHABET = ("A".."Z").to_a + ("a".."z").to_a

# def find_missing_letter(array)
#   alpha_start = ALPHABET.index(array[0])
#   array.each_with_index do |char, index|
#     if array[index+1] != ALPHABET[alpha_start+1]
#       return ALPHABET[alpha_start+1]
#     else
#       alpha_start += 1
#     end
#   end
# end

def find_missing_letter(array)
  ((array[0]..array[-1]).to_a - array)[0]
end


p find_missing_letter(["a","b","c","d","f"]) #== "e"
p find_missing_letter(["O","Q","R","S"]) == "P"
p find_missing_letter(["b","d"]) == "c"
p find_missing_letter(["a","b","d"]) == "c"
p find_missing_letter(["b","d","e"]) == "c"

p "a".next
