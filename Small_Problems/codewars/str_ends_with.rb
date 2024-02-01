#str_ends_with.rb

def solution(str, ending)
  length = ending.length
  str[-length, length] == ending
end


p solution('abcde', 'cde') == true
p solution('abcde', 'abc') == false
p solution('abcde', '') == true