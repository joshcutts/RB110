# reverse_combine.rb

=begin
1. More than one word? Reverse each word and combine first with second, third with fourth and so on...
   (odd number of words => last one stays alone, but has to be reversed too)
2. Start it again until there's only one word without spaces
3. Return your result...


Input:  "abc def"
Output: "cbafed"

Input:  "abc def ghi 123"
Output: "defabc123ghi"

Input:  "abc def gh34 434ff 55_eri 123 343"
Output: "43hgff434cbafed343ire_55321"

PROBLEM:
input: string with spaces
output: modified string
- if there is more than 1 word, reverse each word and combine adjacent elements
- last element is alone but needs to be reversed



EXAMPLES:
Input:  "abc def ghi 123"
Output: "defabc123ghi"

cbafed ihg321

defabc123ghi

Input:  "abc def gh34 434ff 55_eri 123 343"
Output: "43hgff434cbafed343ire_55321"

cbafed 43hgff434 ire_55321 343

defabc434ffgh34 12355_eri343

43hg


ALGORITHM:
- turn the given string into an array
- start a loop
  - create an empty array to hold modifications
  - reverse each word in the array
  - if odd number of elements, make variable that holds odd element and reverse it
  
  - combine 1st & 2nd, 3rd & 4th etc. elements until end of array & add to 
  - add odd element if there was one
  - reassign the original words array to this new array
  - break if length of new array is 1
- return 1st element of array


=end


# def reverse_and_combine_text(str)
#   words = str.split(" ")
#   return words[0] if words.length == 1
#   loop do
    
#     new_words = []
#     reversed_words = words.map {|word| word.chars.reverse.join("")}
#     odd = reversed_words.pop if reversed_words.length.odd?

#     i = 0
#     loop do
#       new_words << reversed_words[i] + reversed_words[i+1]
#       i += 2
#       break if i > words.length - 2
#     end
#     new_words = new_words + [odd] if !odd.nil?
#     words = new_words
#     break if words.length == 1
#   end
#   words[0]
# end

def reverse_and_combine_text(str)
  words = str.split(" ")
  return words[0] if words.length == 1
  loop do
    reversed_words = words.map(&:reverse)
    new_words = reversed_words.each_slice(2).map(&:join)
    words = new_words
    break if words.length == 1
  end
  words[0]
end


p reverse_and_combine_text("abc def") == "cbafed"
p reverse_and_combine_text("abc def ghi jkl") == "defabcjklghi"
p reverse_and_combine_text("dfghrtcbafed") == "dfghrtcbafed"
p reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44") == "trzwqfdstrteettr45hh4325543544hjhjh21lllll"
p reverse_and_combine_text("sdfsdf wee sdffg 342234 ftt") == "gffds432243fdsfdseewttf"