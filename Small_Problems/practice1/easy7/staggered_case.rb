=begin


Write a method that takes a String as an argument, and returns a new String 
that contains the original value using a staggered capitalization scheme in 
which every other character is capitalized, and the remaining characters are lowercase. 
Characters that are not letters should not be changed, but count as characters when
switching between upper and lowercase.


PROBLEM:
input: string
output: modified string where every other character is capitalized and remaining characters
are lowercase

EXAMPLES:
staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
staggered_case('ALL_CAPS') == 'AlL_CaPs'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'

DATA STRUCTURE:
'I Love Launch School!'
'I LoVe lAuNcH ScHoOl!'

'123456789'


ALGORITHM:
- create new empty string to hold the final result
- iterate through the string one character at a time and keep track of index
  - if the index is even, uppercase the character and add it to the final result
  - otherwise lowercase the character and add it to the final result
- return the final result




=end

# def staggered_case(str)
#   result = ""
#   str.each_char.with_index do |char, i|
#     if i.even?
#       result << char.upcase
#     else
#       result << char.downcase
#     end
#   end
#   result
# end

def staggered_case(str)
  result = ""
  str.each_char.with_index do |char, i|
    i.even? ? (result << char.upcase) : (result << char.downcase)
  end
  result
end

p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'