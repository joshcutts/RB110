
=begin

The vowel substrings in the word codewarriors are o,e,a,io. 
The longest of these has a length of 2. Given a lowercase 
string that has alphabetic characters only (both vowels and consonants) 
and no spaces, return the length of the longest vowel substring. Vowels are any of aeiou.

PROBLEM:
input: string
output: integer, which is the length/size of the longest substring that is made up of all vowels

explicit: vowels are aeiou
strings are only alphabetic characters with no spaces

EXAMPLES:
p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8

DATA STRUCTURE:
"codewarriors"
o
e
a
i
io**

"suoidea"
u
o
i
uo
oi
uoi
e
a
ea


ALGORITHM:
- create all possible substrings of the current string
- select substrings which are made up of only vowels
- use the vowel substring array to create an array of length of each vowel substring (integer array)
- select the max integer which represents the length of the longest vowel substring


substring algorithm
- use outer loop to iterate through starting index, iterate from 0 to length -1
- use inner loop to iterate through possible lengths, length will change on each changing start index (max length - starting index)

=end


# def create_all_substrings(string)
#   substrings = []
#   (0..string.length-1).each do |start_index|
#     max_length = string.length - start_index
#     (1..max_length).each do |length|
#       substrings << string[start_index, length]
#     end
#   end
#   substrings
# end


# def solve(string)
#   vowels = %w(a e i o u)
#   all_substrings = create_all_substrings(string)
#   vowel_substrings = all_substrings.select do |substring|
#     substring.chars.all? {|char| vowels.include?(char)}
#   end
#   vowel_substrings_lengths = vowel_substrings.map(&:length)
#   vowel_substrings_lengths.max
# end

def solve(string)
  string.scan(/[aeiou]+/).map(&:length).max
end

p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8

