
# def solve(str)
#   str.scan(/[aeiou]+/).max_by(&:length).length
# end

def solve(str)
  substrings = []
  (0...str.length).each do |start|
    max = str.length - start
    (1..max).each do |length|
      substrings << str[start, length]
    end
  end
  vowel_subs = []
  substrings.each do |substring|
    vowel_subs << substring if substring.chars.all?(/[aeiou]/)
  end
  vowel_subs.map(&:length).max
end

p solve("codewarriors") == 2
p solve("suoidea") == 3
p solve("iuuvgheaae") == 4
p solve("ultrarevolutionariees") == 3
p solve("strengthlessnesses") == 1
p solve("cuboideonavicuare") == 2
p solve("chrononhotonthuooaos") == 5
p solve("iiihoovaeaaaoougjyaw") == 8

