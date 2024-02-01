
=begin

Complete the function scramble(str1, str2) that returns true if a portion of str1 characters can 
be rearranged to match str2, otherwise returns false.

Notes:

Only lower case letters will be used (a-z). No punctuation or digits will be included.
Performance needs to be considered.

PROBLEM:
input: 2 strings
output: boolean
true if some of the letters in string 1 can be rearranged to form string 2
false otherwise

EXAMPLES:
p scramble('rkqodlw',           'world'     ) == true
p scramble('cedewaraaossoqqyt', 'codewars'  ) == true
p scramble('katas',             'steak'     ) == false
p scramble('scriptjava',        'javascript') == true
p scramble('scriptingjava',     'javascript') == true

DATA STRUCTURE:


ALGORITHM:
- create empty result array
- turn both strings into arrays
- iterate through the second string array, one char at a time
  - if the 1st string array includes the current char
    - add it to result array
    - find the index of the character
    - remove the character at that index (need to avoid removing duplicate chars)
- return true if the result array joined is equal to the 2nd string
=end

# def scramble(str1, str2)
#   result = []
#   str1_arr = str1.chars
#   str2_arr = str2.chars

#   str2_arr.each do |char|
#     if str1_arr.include?(char)
#       result << char
#       i = str1_arr.index(char)
#       str1_arr.delete_at(i)
#     end
#   end
#   result.join("") == str2
# end


def scramble(str1, str2)
  str2_arr = str2.chars
  str2_arr_uniq = str2_arr.uniq
  str1_arr = str1.chars

  str2_arr_uniq.each do |char|
    return false if str1_arr.count(char) < str2_arr.count(char)
  end
  true
end

p scramble('rkqodlw',           'world'     ) == true
p scramble('cedewaraaossoqqyt', 'codewars'  ) == true
p scramble('katas',             'steak'     ) == false
p scramble('scriptjava',        'javascript') == true
p scramble('scriptingjava',     'javascript') == true

