arr = ['340', '15', '1', '3400']

a = arr.sort_by do |string|
  string.chars.inject(0) { |sum, char| sum = char.ord}
end

p a

p "3".ord
