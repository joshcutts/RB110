words = %w(one two three four five six seven eight nine 1 2 3 4 5 6 7 8 9)
pattern = Regexp.union(words)
p "two1nine".scan(pattern)