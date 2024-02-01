=begin

Complete the solution so that it returns the number of times 
the search_text is found within the full_text. Overlap is not 
permitted : "aaa" contains 1 instance of "aa", not 2.

=end

# def solution(str, search)
#   str.scan(search).length
# end

def solution(str, search)
  length = search.length
  strings = []
  (0..str.length-length).each do |start|
    strings << str[start, length]
  end
  strings.count(search)
end

p solution('abcdeb','b') #== 2
p solution('abcdeb', 'a') #== 1
p solution('abbc', 'bb') #== 1