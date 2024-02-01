# kebabize.rb

=begin

"camelsHaveThreeHumps"  -->  "camels-have-three-humps"
"camelsHave3Humps"  -->  "camels-have-humps"
"CAMEL"  -->  "c-a-m-e-l"

input: string in camelcase
output: string in kebab case
1) lowercase
2) each word (dennoted by uppercase char or first char of string) is separated by "-"
3) no numeric characters

EXAMPLES:
p kebabize('myCamelCasedString') == 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') == 'my-camel-has-humps'


DATA STRUCTURE:


ALGORITHM:
- initialize an empty array to hold final result
- remove non-alpha chars from the string
- intialize starting index at 0
- starting at the beginning of the string, iterate through until an uppercase char is located, keep track of length
  - slice the string from starting index & add to result array, downcase the string before adding
  - reassign starting index to starting index + length
  - restart length count
- join the array using "-" and return



=end


def kebabize(str)
  result = []
  str.gsub!(/[^A-Za-z]/, "")
  start_index = 0
  length = 1
  (1...str.length).each do |i|
    if str[i] == str[i].upcase
      result << str[start_index, length].downcase
      start_index += length
      length = 1
    elsif i == str.length-1
      result << str[start_index, length+1].downcase
    else
      length += 1
    end
  end
  result.join("-")
end



p kebabize('myCamelCasedString') #== 'my-camel-cased-string'
p kebabize('myCamelHas3Humps') #== 'my-camel-has-humps'