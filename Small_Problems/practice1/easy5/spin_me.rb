=begin

You are given a method named spin_me that takes a string as
an argument and returns a string that contains the same words, 
but with each word's characters reversed. Given the method's 
implementation, will the returned string be the same object as 
the one passed in as an argument or a different object?

p spin_me("hello world") == "olleh dlrow"

=end

=begin

PROBLEM:
input: string

=end

def spin_me(string)
  words = string.split(" ")
  words.map {|word| word.chars.reverse.join}.join(" ")
end

p spin_me("hello world") == "olleh dlrow"