# reverse_rotate.rb


=begin

The input is a string str of digits. Cut the string into chunks (a chunk here is a substring 
of the initial string) of size sz (ignore the last chunk if its size is less than sz).

If a chunk represents an integer such as the sum of the cubes of its digits is divisible by 2, 
reverse that chunk; otherwise rotate it to the left by one position. Put together these modified 
chunks and return the result as a string.



revrot("123456987654", 6) --> "234561876549"
revrot("123456987653", 6) --> "234561356789"
revrot("66443875", 4) --> "44668753"
revrot("66443875", 8) --> "64438756"
revrot("664438769", 8) --> "67834466"
revrot("123456779", 8) --> "23456771"
revrot("", 8) --> ""
revrot("123456779", 0) --> "" 
revrot("563000655734469485", 4) --> "0365065073456944"


Example of a string rotated to the left by one position:
s = "123456" gives "234561".

PROBLEM:
input: string with digits
output: a new string

EXAMPLES:
revrot("123456987654", 6) --> "234561876549"
revrot("123456987653", 6) --> "234561356789"
revrot("66443875", 4) --> "44668753"
revrot("66443875", 8) --> "64438756"
revrot("664438769", 8) --> "67834466"
revrot("123456779", 8) --> "23456771"
revrot("", 8) --> ""
revrot("123456779", 0) --> "" 
revrot("563000655734469485", 4) --> "0365065073456944"

DATA STRUCTURE:
"123456987654" 6
"123456" "987654" (rotated twice)

ALGORITHM:
- generate substrings of given length (2nd argued integer)
- remove any substring, less than the given length (select)
- iterate through the substrings
  - if the given substring digits, when cubed and summed, is divisible by 2, reverse the string
  - otherwise, shift the 1st digit to the end of the substring
- combine all sub-strings and return

=end

def revrot(str, num)
  return "" if (num == 0 || num > str.length)
  arr = str.chars.each_slice(num).to_a
  selected_arr = arr.select {|subarr| subarr.length == num}
  int_arr = selected_arr.map {|subarr| subarr.map(&:to_i)}
  selected_arr.map.with_index do |subarr, index|
    if int_arr[index].map {|num| num ** 3}.sum % 2 == 0
      subarr.reverse.join("")
    else
    subarr[1..-1] + [subarr[0]]
    end
  end.join("")
end


p revrot("1234", 0) == ""
p revrot("", 0) == ""
p revrot("1234", 5) == ""
p revrot("733049910872815764", 5) == "330479108928157"
p revrot("123456987654", 6) == "234561876549"
p revrot("123456987653", 6) == "234561356789"
p revrot("66443875", 4) == "44668753"
p revrot("66443875", 8) == "64438756"
p revrot("664438769", 8) == "67834466"
p revrot("123456779", 8) == "23456771"
p revrot("", 8) == ""
p revrot("123456779", 0) == "" 
p revrot("563000655734469485", 4) == "0365065073456944"
