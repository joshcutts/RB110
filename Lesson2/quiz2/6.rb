a = 'hi'
english_greetings = ['hello', a, 'good morning']

greetings = {
  french: ['bonjour', 'salut', 'allo'],
  english: english_greetings,
  italian: ['buongiorno', 'buonasera', 'ciao']
}

# english_greetings[1] = "hello"
a = "sup"
# greetings[:english][1] = 'hey'

greetings.each do |language, greeting_list|
  greeting_list.each { |greeting| greeting.upcase! }
end

puts a
puts english_greetings[1]
puts greetings[:english][1]

# a = [1, 3]
# b = [2]
# arr = [a, b]
# arr # => [[1, 3], [2]]

# arr[0][0] = 5
# p arr # => [[5, 3], [2]]
# p a # => [5, 3]

# a = "hi there"
# b = a
# a = "not here"

# p a # => "not here"
# p b # => "hi there"