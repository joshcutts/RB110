=begin

## Anagram difference

https://www.codewars.com/kata/5b1b27c8f60e99a467000041/train/ruby

Given two words, how many letters do you have to remove from them to make them anagrams?

- A word is an anagram of another word if they have the same letters (usually in a different order).
- Do not worry about case. All inputs will be lowercase.

Examples

- First word : c od e w ar s (4 letters removed)
- Second word : ha c k er r a nk (6 letters removed)
- common: cear
- Result : **10**


p anagram_difference('', '') == 0
p anagram_difference('a', '') == 1
p anagram_difference('', 'a') == 1
p anagram_difference('ab', 'a') == 1
p anagram_difference('ab', 'ba') == 0
p anagram_difference('ab', 'cd') == 4
p anagram_difference('aab', 'a') == 2
p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10

ALGORITHM:
- return the length of the 2 strings if either is empty
- find largest string by calling scan on the longer string and use the uniq characters from the shorter string to search
- add difference between string1 and largest substring and string2 and largest substring; add and return


=end

# def anagram_difference(string1, string2)
#   return string1.length + string2.length if (string1.empty? || string2.empty?)
#   array = [string1, string2].sort_by(&:length)
#   longest_substring = array[1].chars.uniq.join.scan(/[#{array[0]}]/).join
#   if longest_substring.empty?
#     string1.length + string2.length
#   else
#     if string1 == longest_substring
#       string1_diff = 0
#       string2_diff = string2.length - longest_substring.length
#     elsif string2 == longest_substring
#       string2_diff = 0
#       string1_diff = string1.length - longest_substring.length
#     else
#       string1_diff = string1.length - longest_substring.length
#       string2_diff = string2.length - longest_substring.length
#     end
#     string1_diff + string2_diff
#   end
# end

def anagram_difference(string1, string2)
  count = 0
  string1.each_char do |char|
    if string2.include?(char)
      string1.sub!(char, "")
      string2.sub!(char, "")
    end
    p string1
    p string2
    sleep(2)
  end
  string1.length + string2.length
end


# p "hackerrank".chars.uniq.join
# p 'codewars'.scan(/[hackern]/)
# p "hackern".scan(/[codewars]/)
# p "hackerrank".scan(/[codewars]/)


# str = "ba"
# p "ab".scan(/[str]/)
# p "aab".scan(/[a]/)


# def anagram_difference(string1, string2)

# end

# TESTS

# p anagram_difference('', '') == 0
# p anagram_difference('a', '') == 1
# p anagram_difference('', 'a') == 1
# p anagram_difference('ab', 'a') == 1
# p anagram_difference('ab', 'ba') == 0
# p anagram_difference('ab', 'cd') == 4
# p anagram_difference('aab', 'a') == 2
# p anagram_difference('a', 'aab') == 2
p anagram_difference('codewars', 'hackerrank') == 10