string = "abcde"
substrings = []
# max_index = string.length - 1

# (0..max_index).each do |start_index|
#   max_length = string.length - start_index
#   (1..max_length).each do |length|
#     substrings << string[start_index, length]
#   end
# end

# p substrings

max_length = string.length

(1..max_length).each do |length|
  max_index = string.length - 1
  (0..max_index).each do |start_index|
    substrings << string[start_index, length]
  end
end

p substrings