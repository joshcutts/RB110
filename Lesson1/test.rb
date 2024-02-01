=begin



ALGORITHM
- create all possible substrings
- convert substrings in new array to integer
- select odd integers
- return length of new odd integer array
=end

def solve(num)
  max_length = num.length
  substrings = []
  (0..max_length).each do |start_index|
    substring_length = max_length - start_index
    (1..substring_length).each do |length|
      substrings << num[start_index, length]
    end
  end
  substrings.map(&:to_i).select(&:odd?).length
end

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28