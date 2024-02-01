str = "joe's favorite color is blue"
str[0] = 'J'
p str # => "Joe's favorite color is blue"
str[6] = str[6].upcase

str[15] = "C"
str[21] = "I"
str[24] = "B"
p str