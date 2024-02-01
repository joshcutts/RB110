# reverse_and_combine2.rb

=begin

1. More than one word? Reverse each word and combine first with second, third with fourth and so on...
   (odd number of words => last one stays alone, but has to be reversed too)
2. Start it again until there's only one word without spaces
3. Return your result..


Input:  "abc def"
Output: "cbafed"

Input:  "abc def ghi 123"
Output: "defabc123ghi"

Input:  "abc def gh34 434ff 55_eri 123 343"
Output: "43hgff434cbafed343ire_55321"


p reverse_and_combine_text("abc def") == "cbafed"
p reverse_and_combine_text("abc def ghi jkl") == "defabcjklghi"
p reverse_and_combine_text("dfghrtcbafed") == "dfghrtcbafed"
p reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12 44") == "trzwqfdstrteettr45hh4325543544hjhjh21lllll"
p reverse_and_combine_text("sdfsdf wee sdffg 342234 ftt") == "gffds432243fdsfdseewttf"


PROBLEM:
input: string
output: reversed and combined string

EXAMPLES:
p reverse_and_combine_text("abc def") == "cbafed"
p reverse_and_combine_text("abc def ghi jkl") == "defabcjklghi"
p reverse_and_combine_text("dfghrtcbafed") == "dfghrtcbafed"
p reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12 44") == "trzwqfdstrteettr45hh4325543544hjhjh21lllll"
p reverse_and_combine_text("sdfsdf wee sdffg 342234 ftt") == "gffds432243fdsfdseewttf"

DATA STRUCTURES:
Input:  "abc def"
Output: "cbafed"

abc def
cba fed
cbafed


Input:  "abc def ghi 123"
Output: "defabc123ghi"

abc def ghi 123
cba fed ihg 321
cbafed ihg321

defabc123ghi

Input:  "abc def gh34 434ff 55_eri 123 343"
Output: "43hgff434cbafed343ire_55321"

"abc def gh34 434ff 55_eri 123 343"

odd element = 343
reversed odd_element = 343

abc def gh34 434ff 55_eri 123
cba fed 43hg ff434 ire_55 321
cbafed 43hgff434 ire_55321 343 (add in reversed odd element)
reverse...
defabc434ffgh34 12355_eri343
43ghff434cbafed 343ire_55321
43ghff434cbafed343ire_55321

ALGORITHM:
- split string into array (words_string)
- while the array is > 1 element long
- iterate through the array
- create an empty array to hold new combined strings; intermediate_strings
- if there are an odd number of elements, save the last element into a new array and reverse it; keep track of this fact?
  - reverse every element of the array
  - combine every 2 elements and push into new array
- replace the original array with (words_string) with intermediate strings array
- join the array and return the string

=end

def reverse_and_combine_text(string)
  words_array = string.split
  while words_array.length > 1
    counter = 0
    intermediate_strings = []
    last_element = nil
    loop do
      if words_array.length.odd?
        last_element = words_array[-1].reverse
      end
      reversed_combined = words_array[counter].reverse << words_array[counter + 1].reverse
      intermediate_strings << reversed_combined
      counter += 2
      break if counter >= words_array.length - 1
    end
    intermediate_strings << last_element if !last_element.nil?
    words_array = intermediate_strings
  end
  words_array[0]
end


p reverse_and_combine_text("abc def") == "cbafed"
p reverse_and_combine_text("abc def ghi jkl") == "defabcjklghi"
p reverse_and_combine_text("dfghrtcbafed") == "dfghrtcbafed"
p reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12 44") == "trzwqfdstrteettr45hh4325543544hjhjh21lllll"
p reverse_and_combine_text("sdfsdf wee sdffg 342234 ftt") == "gffds432243fdsfdseewttf"