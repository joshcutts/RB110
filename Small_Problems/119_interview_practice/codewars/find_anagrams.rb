=begin


anagrams('abba', ['aabb', 'abcd', 'bbaa', 'dada']) => ['aabb', 'bbaa']

anagrams('racer', ['crazer', 'carer', 'racar', 'caers', 'racer']) => ['carer', 'racer']

anagrams('laser', ['lazing', 'lazy',  'lacer']) => []




=end

def anagrams(str, arr)
  arr.select {|e| str.chars.sort == e.chars.sort} 
end

p "abba".chars.sort == "bbaa".chars.sort


p anagrams("a", ["a", "b", "c", "d"]) == ["a"]
p anagrams("ab", ["ab", "ba", "aa", "bb", "cc", "ac", "bc", "cd"]) == ["ab", "ba"]
p anagrams("abba", ["aabb", "bbaa", "abab", "baba", "baab", "abcd", "abbba", "baaab", "abbab", "abbaa", "babaa"]) == ["aabb", "bbaa", "abab", "baba", "baab"]